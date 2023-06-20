import redisClient from '../configs/redis';

async function cacheResponse(key:string, value: unknown) {
  await redisClient.connect();
  await redisClient.setex(key, 3600, JSON.stringify(value));
  await redisClient.quit();
}

export default cacheResponse;
