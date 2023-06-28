import db from '../database/connection';

export async function findPersonPregnantMinor(persCodigo: number): Promise<{
  'menor_de_edad_embarazada': {
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
    INNER JOIN
        SanMiguel.dbo.Persona AS p ON t.paciCodigo = p.persCodigo
    WHERE 
        d.diagCodigoInterno IN (${diagCodigosInternos.map(codigo => `'${codigo}'`).join(', ')})
        AND t.turnFechaAsignado <= DATEADD(MONTH, -9, GETDATE())
        AND DATEADD(YEAR, 18, p.persFechaNacimiento) > GETDATE()
        AND t.paciCodigo = @persCodigo
    ORDER BY t.turnCodigo ASC;
    `;

  const result = await pool.request()
    .input('persCodigo', String(persCodigo))
    .query(query);

  return {
    menor_de_edad_embarazada: {
      value: result.recordset[0]?.turnCodigo ? true : false,
      ultima_fecha_de_consulta: result.recordset[0]?.turnFechaAsignado || null,
      turnCodigo: result.recordset[0]?.turnCodigo || null,
    }
  };
}

export default findPersonPregnantMinor;
