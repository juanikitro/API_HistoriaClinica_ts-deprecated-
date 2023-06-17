/* eslint-disable import/no-extraneous-dependencies */
import { Request, Response } from 'express';
import jwt from 'jsonwebtoken';

function auth(req: Request, res: Response): Response {
  const { user, password } = req.body;

  if (user === process.env.AUTH_USER || password === process.env.AUTH_PASSWORD) {
    const token = jwt.sign({ user }, process.env.JWT_SECRET_KEY ?? 'd3f4ult_s3cr3t_k3y', { expiresIn: '30d' });
    return res.status(200).send(token);
  }
  return res.status(401).send('Unauthorized');
}

export default auth;
