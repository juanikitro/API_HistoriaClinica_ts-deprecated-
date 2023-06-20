import db from '../database/connection';

export async function findPersonTurns(personId: number): Promise<{
  value: Date | null,
  tipo_de_especialidad: string | null,
  asistio: boolean | null,
  reprogramado: boolean | null,
  reprogramado_fecha: Date | null,
  turnCodigo: number
}> {
  const pool = await db.poolConnect;

  const query = `
    SELECT
      TOP 1
      TURN.turnCodigo,
      TURN.turnFecha,
      TURN.turnLlegada,
      TURN.turnReprogramar,
      SUB.suesDescripcion
    FROM
      SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.SubEspecialidad AS SUB ON
      TURN.suesCodigo = SUB.suesCodigo
    WHERE
      TURN.paciCodigo = @personId
    ORDER BY TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('personId', String(personId))
    .query(query);

  return {
    value: result.recordset[0]?.turnFecha ?? null,
    tipo_de_especialidad: result.recordset[0]?.suesDescripcion ?? null,
    asistio: !!result.recordset[0]?.turnLlegada,
    reprogramado: (result.recordset[0]?.turnReprogramar === 1),
    reprogramado_fecha: null, // TODO: Todos son 0
    turnCodigo: result.recordset[0]?.turnCodigo ?? null, // TODO: No encuentro este dato
  };
}

export default findPersonTurns;
