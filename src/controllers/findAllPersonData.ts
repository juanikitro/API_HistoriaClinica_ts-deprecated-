import { Request, Response } from 'express';
import { RequestBody } from '../../global';
import { findPersonId } from '../services/findPersonId';
import { findPersonTurns } from '../services/findPersonTurns';
import { findPersonHealthCenters } from '../services/findPersonHealthCenters';
import cacheResponse from '../services/cacheResponse';

async function findAllPersonData(req: Request, res: Response) {
  try {
    const body: RequestBody = req.body as RequestBody;

    if ((!body) || !body.document_number || !body.document_type || !body.gender) {
      return res.status(400).send('Bad Request');
    }

    const personId = await findPersonId(body);
    const personTurns = await findPersonTurns(personId);
    const personHealthCenters = await findPersonHealthCenters(personId);

    const allPersonData = {
      persona: {
        document_type: body.document_type,
        document_number: body.document_number,
        gender: body.gender,
        persona_codigo: personId,
      },
      centros_de_salud_donde_se_atiende: {
        value: personHealthCenters.value,
        ultima_fecha_de_consulta: personHealthCenters.ultima_fecha_de_consulta,
        turnos_codigos: personHealthCenters.turnCodigos,
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

    cacheResponse(`${body.document_number}${body.document_type}${body.gender}`, allPersonData);

    return res.send(allPersonData);
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default findAllPersonData;
