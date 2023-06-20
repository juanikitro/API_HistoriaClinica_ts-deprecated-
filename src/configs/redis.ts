/* eslint-disable import/no-extraneous-dependencies */
import Redis from 'ioredis';

const redisClient = new Redis({
  host: '127.0.0.1',
  port: 6379,
  lazyConnect: true,
  connectTimeout: 15000,

});

export default redisClient;
