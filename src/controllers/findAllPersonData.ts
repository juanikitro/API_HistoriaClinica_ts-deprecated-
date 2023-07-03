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
    const personSubstanceUse = await findPersonSubstanceUse(persCodigo);
    const personMentalProblems = await findPersonMentalProblems(persCodigo);
    const personMedicalControls = await findPersonMedicalControls(persCodigo);
    const personHealthCenters = await findPersonHealthCenters(persCodigo);
    const personTurns = await findPersonTurns(persCodigo);
    const personPregnant = await findPersonPregnant(persCodigo);

    const allPersonData = {
      person: {
        document_number: body.document_number,
        document_type: body.document_type,
        gender: body.gender,
        persCodigo,
      },
      indicators: {
        substanceUse: personSubstanceUse.substanceUse,
        mentalProblems: personMentalProblems.mentalProblems,
        recurrentOrChronicSickness: {
          value: 'ELIAS',
        },
        catastrophicSickness: {
          value: 'ELIAS',
        },
        disability: {
          value: 'ELIAS',
          type: 'ELIAS',
        },
        medicalControls: personMedicalControls.medicalControls,
        therapeuticTreatment: {
          value: 'ELIAS',
          type: 'ELIAS',
        },
        medicalCenters: personHealthCenters,
        turns: personTurns,
        pregnancy: personPregnant.pregnancy,
        pediatricControls: {
          value: 'boolean',
          quantity: 'integer',
          lastTurn: 'date',
          turnCodigo: 'integer',
        },
        dentalControls: {
          value: 'boolean',
          lastTurn: 'date',
          turnCodigo: 'integer',
        },
        ophthalmologicalControls: {
          value: 'boolean',
          lastTurn: 'date',
          turnCodigo: 'integer',
        },
      },
      alerts: {
        pregnantMinor: 'boolean',
        pregnantWithoutControls: 'boolean',
        lackOfHygiene: 'boolean',
        lackOfCares: 'boolean',
        sexualAbuse: 'boolean',
        childAbuse: 'boolean',
        withoutFamilySupport: 'boolean',
        dysfunctionalFamily: 'boolean',
        withoutAdherence: 'boolean',
        chronicPalliative: 'boolean',
        domesticAccident: 'boolean',
        withoutDNI: 'boolean',
        probableConsumption: 'boolean',
        probablyPsychiatric: 'boolean',
        attemptedSuicide: 'boolean',
        foodTreatment: 'boolean',
        conductDisorder: 'boolean',
        posttraumaticStress: 'boolean',
        autolyticBehaviors: 'boolean',
        disability: 'boolean',
        absentFather: 'boolean',
        scarceSymbolicResources: 'boolean',
        abandonment: 'boolean',
        genderViolence: 'boolean',
        migrants: 'boolean',
        withoutTreatmentAdherence: 'boolean',
        lowLevelAlarms: 'boolean',
        housingProblem: 'boolean',
        insufficientFinancialResources: 'boolean',
        lawConflicts: 'boolean',
        familyDisorganization: 'boolean',
        littleNeonatologyPresence: 'boolean',
        teenageMother: 'boolean',
        streetSituation: 'boolean',
        deadFetus: 'boolean',
        deceasedBaby: 'boolean',
      },
    };

    cacheResponse(`${body.document_number}${body.document_type}${body.gender}`, allPersonData);

    return res.send(allPersonData);
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default findAllPersonData;
