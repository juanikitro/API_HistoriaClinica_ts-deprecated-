import db from '../database/connection';

export async function findPersonMentalProblems(persCodigo: number): Promise<{
  'mentalProblems': {
    value: boolean,
    types: string[] | null,
  }
}> {
  const pool = await db.poolConnect;

  const diagCodigosInternos: string[] = [
    'F00',
    'F01',
    'F03',
    'F06',
    'F07',
    'F09',
    'F20',
    'F20.0',
    'F20.1',
    'F20.3',
    'F20.9',
    'F22',
    'F23',
    'F25',
    'F29',
    'F30',
    'F31',
    'F32',
    'F33',
    'F39',
    'F40',
    'F41',
    'F42',
    'F43.0',
    'F43.1',
    'F43.2',
    'F44',
    'F45',
    'F48',
    'F50',
    'F53',
    'F60.3',
    'F61',
    'F63',
    'F69',
    'F70',
    'F71',
    'F72',
    'F79',
    'F84.0',
    'F84.5',
    'F84.9',
    'F90.0',
    'F91',
    'F91.3',
    'F92',
    'F93',
    'F94',
    'F98',
    'F99',
  ];

  const query = `
    SELECT TOP 1
        t.turnCodigo
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

  // TODO: implementar types, no sabemos de donde sale
  return {
    mentalProblems: {
      value: !!result.recordset[0]?.turnCodigo,
      types: null,
    },
  };
}

export default findPersonMentalProblems;
