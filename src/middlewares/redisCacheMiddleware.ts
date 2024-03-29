/* eslint-disable max-len */
import { Request, Response, NextFunction } from 'express';
import redisClient from '../configs/redis';

/**
 * This is an async function that searches for data in Redis.
 * @param {Request} req
 * @param {Response} res
 * @param {NextFunction} next - is called to pass control to the next middleware function.
 * @returns `void` (when next function is called) or a `Response` (500 or 200).
 */
async function searchInRedis(req: Request, res: Response, next: NextFunction): Promise<void | Response> {
  try {
    // it is unique, like: 44535030DNIM
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
