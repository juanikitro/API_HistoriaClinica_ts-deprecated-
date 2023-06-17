import { Response } from 'express';
import db from '../database/connection';

async function findPerson(res: Response) {
  try {
    const pool = await db.poolConnect;
    const result = await pool.request().query('SELECT TOP 1 persCodigo FROM SanMiguel.dbo.Persona;');
    return res.send(result.recordset);
  } catch (error) {
    return res.status(500).send('Error de servidor');
  }
}

export default findPerson;
