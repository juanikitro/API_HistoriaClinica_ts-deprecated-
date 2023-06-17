import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';

function authenticateToken(req: Request, res: Response, next: NextFunction): Response | void {
  const authHeader = req.headers.authorization;
  const token = authHeader && authHeader.split(' ')[1];

  if (!token) {
    return res.status(401).send('Unauthorized');
  }

  return jwt.verify(token, process.env.JWT_SECRET_KEY ?? 'd3f4ult_s3cr3t_k3y', (err) => {
    if (err) {
      return res.status(403).send('Forbidden');
    }
    return next();
  });
}

export default authenticateToken;
