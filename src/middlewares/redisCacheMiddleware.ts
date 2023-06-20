import { Request, Response, NextFunction } from 'express';
import redisClient from '../configs/redis';

// Middleware para cachear las respuestas
async function searchInRedis(req: Request, res: Response, next: NextFunction) {
  try {
    const combination: string = (req.body.document_number ?? '') + (req.body.document_type ?? '') + (req.body.gender ?? '');

    await redisClient.connect();
    const redisData = await redisClient.get(combination);
    await redisClient.quit();

    if (redisData) {
      return res.send(JSON.parse(redisData));
    }

    return next();
  } catch (error) {
    return res.status(500).send(error);
  }
}

export default searchInRedis;
