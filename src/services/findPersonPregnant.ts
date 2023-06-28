import db from '../database/connection';

export async function findPersonPregnant(persCodigo: number): Promise<{
  'persona_embarazada_actualmente': {
    value: boolean,
    ultima_fecha_de_consulta: string | null,
    turnCodigo: string | null,
  }
}> {
  const pool = await db.poolConnect;

  const diagCodigosInternos: string[] = ["Z34"];

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
        d.diagCodigoInterno IN (${diagCodigosInternos.map(codigo => `'${codigo}'`).join(', ')})
        AND 
        t.paciCodigo = @persCodigo
        AND t.turnFechaAsignado >= DATEADD(MONTH, -9, GETDATE())
    ORDER BY t.turnCodigo DESC;
    `;
  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    persona_embarazada_actualmente: {
      value: result.recordset[0]?.turnCodigo ? true : false,
      ultima_fecha_de_consulta: result.recordset[0]?.turnFechaAsignado || null,
      turnCodigo: result.recordset[0]?.turnCodigo || null,
    }
  };
}

export default findPersonPregnant;
