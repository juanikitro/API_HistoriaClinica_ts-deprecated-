import dotenv from 'dotenv';
import redisClient from '../configs/redis';

dotenv.config();

async function cacheResponse(key:string, value: unknown) {
  await redisClient.connect();
  await redisClient.setex(key, process.env.CACHE_EXPIRATION_TIME ?? 3600, JSON.stringify(value));
  await redisClient.quit();
}

export default cacheResponse;
