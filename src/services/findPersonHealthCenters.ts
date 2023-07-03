/* eslint-disable max-len */
import db from '../database/connection';

interface MedicalCenters { name: string; lastTurn: Date; turnCodigo: number; }

/**
 * This function retrieves health center info for a given person ID from a database.
 * @param {number} persCodigo
 * @returns All the necessary information about the medical centers where the person was treated.
 */
export async function findPersonHealthCenters(persCodigo: number): Promise<MedicalCenters[] | []> {
  const pool = await db.poolConnect;

  const query = `
    SELECT
      TURN.turnCodigo,
      TURN.turnFecha,
      UBI.ubicDescripcion
    FROM 
        SanMiguel.dbo.Turno AS TURN
    LEFT JOIN SanMiguel.dbo.Ubicacion AS UBI 
        ON TURN.ubicCodigo = UBI.ubicCodigo
    INNER JOIN (
        SELECT 
            ubicCodigo, 
            MAX(turnCodigo) AS MaxTurnCodigo
        FROM 
            SanMiguel.dbo.Turno
        WHERE 
            paciCodigo = @persCodigo AND 
            turnLlegada IS NOT NULL
        GROUP BY 
            ubicCodigo
    ) AS GroupedTURN 
        ON TURN.ubicCodigo = GroupedTURN.ubicCodigo AND 
          TURN.turnCodigo = GroupedTURN.MaxTurnCodigo
    ORDER BY 
        TURN.turnCodigo DESC;`;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  const medicalCenters: MedicalCenters[] = [];

  result.recordset.forEach((item: { 'ubicDescripcion': string, 'turnFecha': Date, 'turnCodigo': number }) => {
    medicalCenters.push({
      name: item.ubicDescripcion,
      lastTurn: item.turnFecha,
      turnCodigo: item.turnCodigo,
    });
  });

  return medicalCenters;
}

export default findPersonHealthCenters;
