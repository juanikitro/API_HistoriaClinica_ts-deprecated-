/* eslint-disable max-len */
import db from '../database/connection';

/**
 * This function retrieves information about the latest appointment of a given patient,
 * including the date, type of specialty, and whether it was attended or rescheduled.
 * @param {number} persCodigo
 * @returns All the needed info about the person's turns.
 */
export async function findPersonTurns(persCodigo: number): Promise<{
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
      TURN.turnFechaAsignado,
      TURN.turnLlegada,
      TURN.turnReprogramar,
      TURN.turnFecha, 
      SUB.suesDescripcion
    FROM
      SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.SubEspecialidad AS SUB ON
      TURN.suesCodigo = SUB.suesCodigo
    WHERE
      TURN.paciCodigo = @persCodigo
    ORDER BY TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    value: result.recordset[0]?.turnFechaAsignado ?? null,
    tipo_de_especialidad: result.recordset[0]?.suesDescripcion ?? null,
    asistio: !!result.recordset[0]?.turnLlegada,
    reprogramado: (result.recordset[0]?.turnReprogramar === 1),
    reprogramado_fecha: (result.recordset[0]?.turnReprogramar === 1) ? result.recordset[0]?.turnFecha : null,
    turnCodigo: result.recordset[0]?.turnCodigo ?? null,
  };
}

export default findPersonTurns;
