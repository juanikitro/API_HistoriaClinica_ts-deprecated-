import {
  Application, Request, Response,
} from 'express';
import dotenv from 'dotenv';
import auth from '../controllers/auth';
import findPerson from '../controllers/findPerson';

dotenv.config();

const endpoints = (app: Application): void => {
  app.post('/v1/auth', (req: Request, res: Response) => auth(req, res));

  app.get('/v1/api/person', async (req: Request, res: Response) => findPerson(res));
};

export default endpoints;
