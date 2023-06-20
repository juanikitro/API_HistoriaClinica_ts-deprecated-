import { Request, Response } from 'express';
import { RequestBody } from '../../global';
import { findPersonId } from '../services/findPersonId';

async function findAllPersonData(req: Request, res: Response) {
  try {
    const body: RequestBody = req.body as RequestBody;

    if ((!body) || !body.document_number || !body.document_type || !body.gender) {
      return res.status(400).send('Bad Request');
    }

    const result = await findPersonId(body);

    return res.send(result.recordset);
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default findAllPersonData;
