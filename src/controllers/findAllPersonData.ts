import { Request, Response } from 'express';
import { RequestBody } from '../../global';
import { findPersonId } from '../services/findPersonId';
import { findPersonTurns } from '../services/findPersonTurns';

async function findAllPersonData(req: Request, res: Response) {
  try {
    const body: RequestBody = req.body as RequestBody;

    if ((!body) || !body.document_number || !body.document_type || !body.gender) {
      return res.status(400).send('Bad Request');
    }

    const personId = await findPersonId(body);
    const personTurns = await findPersonTurns(personId);

    const allPersonData = {
      persona: {
        document_type: body.document_type,
        document_number: body.document_number,
        gender: body.gender,
        persona_codigo: personId,
      },
      turnos: {
        value: personTurns.value,
        tipo_de_especialidad: personTurns.tipo_de_especialidad,
        asistio: personTurns.asistio,
        reprogramado: personTurns.reprogramado,
        reprogramado_fecha: personTurns.reprogramado_fecha,
        turnCodigo: personTurns.turnCodigo,
      },
    };

    return res.send(allPersonData);
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default findAllPersonData;
