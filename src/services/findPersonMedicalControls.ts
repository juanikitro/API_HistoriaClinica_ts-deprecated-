import db from '../database/connection';

export async function findPersonMedicalControls(persCodigo: number): Promise<{
  'value': boolean,
  'ultima_fecha_de_consulta': Date,
  'turnCodigo': number
}> {
  const pool = await db.poolConnect;

  const query = `
    SELECT TOP 1
        TURN.turnCodigo,
        TURN.turnFechaAsignado
    FROM
        SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.SubEspecialidad AS SUES ON
        TURN.suesCodigo = SUES.suesCodigo
    WHERE
        TURN.paciCodigo = @persCodigo AND
        TURN.turnLlegada IS NOT NULL AND
        SUES.suesDescripcion LIKE '%CONTROL%'
    ORDER BY TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    // si
    value: !!result.recordset[0]?.turnCodigo,
    ultima_fecha_de_consulta: result.recordset[0]?.turnFechaAsignado,
    turnCodigo: result.recordset[0]?.turnCodigo,
  };
}

export default findPersonMedicalControls;