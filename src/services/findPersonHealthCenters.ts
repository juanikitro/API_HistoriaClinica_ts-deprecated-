import db from '../database/connection';

export async function findPersonHealthCenters(personId: number): Promise<{
  'value': string[],
  'ultima_fecha_de_consulta': Date[],
  'turnCodigos': number[]
}> {
  const pool = await db.poolConnect;

  const query = `
        SELECT
      TURN.turnCodigo,
      TURN.turnFecha,
      UBI.ubicDescripcion
    FROM
      SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.Ubicacion AS UBI ON
      TURN.ubicCodigo = UBI.ubicCodigo
    WHERE
      TURN.paciCodigo = @personId AND
      TURN.turnLlegada IS NOT NULL
      ORDER BY TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('personId', String(personId))
    .query(query);

  return {
    value: result.recordset.map((item: { 'ubicDescripcion': string }) => item.ubicDescripcion),
    ultima_fecha_de_consulta: result.recordset.map((item: { 'turnFecha': Date }) => item.turnFecha),
    turnCodigos: result.recordset.map((item: { 'turnCodigo': number }) => item.turnCodigo),
  };
}

export default findPersonHealthCenters;
