/* eslint-disable max-len */
import { Request, Response } from 'express';
import { RequestBody } from '../../global';
import { findpersCodigo } from '../services/findPersCodigo';
import { findPersonTurns } from '../services/findPersonTurns';
import { findPersonHealthCenters } from '../services/findPersonHealthCenters';
import cacheResponse from '../services/cacheResponse';

/**
 * This function finds and returns all data related to a person based on their document number, document type, and gender.
 * @param {Request} req
 * @param {Response} res
 * @returns `Response` (200, with all person data or 500).
 */
async function findAllPersonData(req: Request, res: Response): Promise<Response> {
  try {
    const body: RequestBody = req.body as RequestBody;

    if ((!body) || !body.document_number || !body.document_type || !body.gender) {
      return res.status(400).send('Bad Request');
    }

    const persCodigo = await findpersCodigo(body);
    const personTurns = await findPersonTurns(persCodigo);
    const personHealthCenters = await findPersonHealthCenters(persCodigo);

    const allPersonData = {
      persona: {
        document_type: body.document_type,
        document_number: body.document_number,
        gender: body.gender,
        persona_codigo: persCodigo,
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
