import { RequestBody } from '../../global';
import db from '../database/connection';

interface DocumentTypes {
  [key: string]: string;
}
export const documentTypes: DocumentTypes = {
  1: 'DNI',
  2: 'CUIT',
  3: 'CDI',
  4: 'LE',
  5: 'LC',
  6: 'CI Ext.',
  7: 'CUIL',
  8: 'Pasaporte',
  9: 'Otro',
  10: 'Sin Documento',
  11: 'Parto',
};

/**
 * It finds a persCodigo in the DB based on a document number, document type, and gender.
 * @param {RequestBody} body -
 * @returns a number or ID (persCodigo).
 */
export async function findpersCodigo(body: RequestBody): Promise<number> {
  const pool = await db.poolConnect;

  const query = 'SELECT TOP 1 persCodigo FROM SanMiguel.dbo.Persona WHERE persNroDocumento=@documentNumber AND tdocCodigo=@documentType AND persSexo=@gender;';
  const result = await pool.request()
    .input('documentNumber', String(body.document_number))
    .input('documentType', String(Object.keys(documentTypes).find((key) => documentTypes[key] === body.document_type)))
    .input('gender', String(body.gender))
    .query(query);

  return result.recordset[0].persCodigo;
}

export default findpersCodigo;
