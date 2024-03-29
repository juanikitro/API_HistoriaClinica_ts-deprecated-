import db from '../database/connection';

export async function findPersonSubstanceUse(persCodigo: number): Promise<{
  'substanceUse': {
    value: boolean,
    lastTurn: string | null,
    turnCodigo: string | null,
  }
}> {
  const pool = await db.poolConnect;

  const diagCodigosInternos: string[] = ['F10', 'F11', 'F12', 'F13', 'F14', 'F15', 'F16', 'F17', 'F18', 'F19'];

  const query = `
    SELECT 
        t.turnCodigo, 
        t.turnFechaAsignado
    FROM 
        SanMiguel.dbo.Turno AS t
    INNER JOIN 
        SanMiguel.dbo.PacienteNomenclador AS pn ON t.paciCodigo = pn.paciCodigo 
    INNER JOIN 
        SanMiguel.dbo.Diagnostico AS d ON pn.diagCodigo = d.diagCodigo 
    WHERE 
        d.diagCodigoInterno IN (${diagCodigosInternos.map((codigo) => `'${codigo}'`).join(', ')})
        AND 
        t.paciCodigo = @persCodigo
    ORDER BY t.turnCodigo DESC;
    `;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    substanceUse: {
      value: !!result.recordset[0]?.turnCodigo,
      lastTurn: result.recordset[0]?.turnFechaAsignado || null,
      turnCodigo: result.recordset[0]?.turnCodigo || null,
    },
  };
}

export default findPersonSubstanceUse;
