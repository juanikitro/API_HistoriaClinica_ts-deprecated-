/* eslint-disable max-len */
import { Request, Response } from 'express';
import { RequestBody } from '../../global';
import { findpersCodigo } from '../services/findPersCodigo';
import { findPersonTurns } from '../services/findPersonTurns';
import { findPersonHealthCenters } from '../services/findPersonHealthCenters';
import { findPersonMedicalControls } from '../services/findPersonMedicalControls';
import { findPersonSubstanceUse } from '../services/findPersonSubstanceUse';
import { findPersonMentalProblems } from '../services/findPersonMentalProblems';
import { findPersonPregnant } from '../services/findPersonPregnant';
import { findPersonPregnantMinor } from '../services/findPersonPregnantMinor';
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
    const personDiagnostics = await findPersonSubstanceUse(persCodigo);
    const personMentalProblems = await findPersonMentalProblems(persCodigo);
    const personMedicalControls = await findPersonMedicalControls(persCodigo);
    const personHealthCenters = await findPersonHealthCenters(persCodigo);
    const personTurns = await findPersonTurns(persCodigo);
    const personPregnant = await findPersonPregnant(persCodigo);
    const personPregnantMinor = await findPersonPregnantMinor(persCodigo);

    const allPersonData = {
      persona: {
        document_type: body.document_type,
        document_number: body.document_number,
        gender: body.gender,
        persona_codigo: persCodigo,
      },
      atraviesa_consumo_de_sustancias: personDiagnostics.atraviesa_consumo_de_sustancias,
      padece_problemas_de_salud_mental: personMentalProblems.padece_problemas_de_salud_mental,
      realiza_controles_medicos: personMedicalControls.realiza_controles_medicos,
      centros_de_salud_donde_se_atiende: personHealthCenters.centros_de_salud_donde_se_atiende,
      turnos: personTurns.turnos,
      persona_embarazada_actualmente: personPregnant.persona_embarazada_actualmente,
      menor_de_edad_embarazada: personPregnantMinor.menor_de_edad_embarazada,
    };

    cacheResponse(`${body.document_number}${body.document_type}${body.gender}`, allPersonData);

    return res.send(allPersonData);
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default findAllPersonData;
