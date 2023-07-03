import db from '../database/connection';

export async function findPersonMedicalControls(persCodigo: number): Promise<{
  medicalControls: {
    'quantity': number,
    'lastTurn': Date,
    'turnCodigo': number
  }
}> {
  const pool = await db.poolConnect;

  const query = `
    SELECT
        TURN.turnCodigo,
        TURN.turnFechaAsignado
    FROM
        SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.SubEspecialidad AS SUES ON
        TURN.suesCodigo = SUES.suesCodigo
    WHERE
        TURN.paciCodigo = @persCodigo AND
        TURN.turnLlegada IS NOT NULL
    ORDER BY TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    medicalControls: {
      quantity: result.recordset.length,
      lastTurn: result.recordset[0]?.turnFechaAsignado ?? null,
      turnCodigo: result.recordset[0]?.turnCodigo ?? null,
    },
  };
}

export default findPersonMedicalControls;
