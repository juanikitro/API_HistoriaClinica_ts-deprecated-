/* eslint-disable max-len */
import db from '../database/connection';

interface Turn { date: Date; specialty: string; attend: boolean; rescheduled: boolean; rescheduledDate: Date; turnCodigo: number; }

/**
 * This function retrieves information about the latest appointment of a given patient,
 * including the date, type of specialty, and whether it was attended or rescheduled.
 * @param {number} persCodigo
 * @returns All the needed info about the person's turns.
 */
export async function findPersonTurns(persCodigo: number) {
  const pool = await db.poolConnect;

  const query = `
    SELECT
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

  const turns: Turn[] = [];
  result.recordset.forEach((item) => {
    turns.push({
      date: item.turnFechaAsignado,
      specialty: item.suesDescripcion,
      attend: !!item.turnLlegada,
      rescheduled: item.turnReprogramar,
      rescheduledDate: item.turnFecha,
      turnCodigo: item.turnCodigo,
    });
  });

  return turns;
}

export default findPersonTurns;
