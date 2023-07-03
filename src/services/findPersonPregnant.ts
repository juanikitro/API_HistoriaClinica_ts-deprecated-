import db from '../database/connection';

export async function findPersonPregnant(persCodigo: number): Promise<{
  'pregnancy': {
    value: boolean,
    minor: boolean,
    risk: boolean,
    numberOfControls: number,
    lastTurn: string | null,
    turnCodigo: string | null,
  }
}> {
  const pool = await db.poolConnect;

  const diagCodigosInternos: string[] = ['Z34'];

  const query = `
    SELECT 
        t.turnCodigo, 
        t.turnFechaAsignado,
        CASE 
          WHEN DATEADD(YEAR, 18, p.persFechaNacimiento) > GETDATE() THEN '1'
          ELSE '0'
        END as 'minor'
    FROM 
        SanMiguel.dbo.Turno AS t
    INNER JOIN 
        SanMiguel.dbo.PacienteNomenclador AS pn ON t.paciCodigo = pn.paciCodigo 
    INNER JOIN 
        SanMiguel.dbo.Diagnostico AS d ON pn.diagCodigo = d.diagCodigo 
    INNER JOIN
        SanMiguel.dbo.Persona AS p ON t.paciCodigo = p.persCodigo
    WHERE 
        d.diagCodigoInterno IN (${diagCodigosInternos.map((codigo) => `'${codigo}'`).join(', ')})
        AND 
        t.paciCodigo = @persCodigo
        AND t.turnFechaAsignado >= DATEADD(MONTH, -9, GETDATE())
    ORDER BY t.turnCodigo DESC;
    `;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    pregnancy: {
      value: !!result.recordset[0]?.turnCodigo,
      minor: result.recordset[0]?.minor === '1',
      risk: false,
      // TODO: implementar RISK. No se de donde sale
      numberOfControls: result.recordset.length,
      lastTurn: result.recordset[0]?.turnFechaAsignado || null,
      turnCodigo: result.recordset[0]?.turnCodigo || null,
    },
  };
}

export default findPersonPregnant;
