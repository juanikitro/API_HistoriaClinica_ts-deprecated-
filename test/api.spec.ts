import request from 'supertest';
import dotenv from 'dotenv';
import jwt from 'jsonwebtoken';

import app from '../src/configs/app';

dotenv.config();

describe('Auth Endpoint', () => {
  it('should return a valid token for valid credentials', async () => {
    const response = await request(app)
      .post('/v1/auth')
      .send({ user: process.env.AUTH_USER, password: process.env.AUTH_PASSWORD });

    expect(response.status).toBe(200);
    expect(response.text).toBeDefined();
  });

  it('should return a 401 for invalid credentials', async () => {
    const response = await request(app)
      .post('/v1/auth')
      .send({ user: 'bad', password: 'credentials' });

    expect(response.status).toBe(401);
    expect(response.text).toBe('Unauthorized');
  });

  it('should return 401 if no token provided', async () => {
    const response = await request(app)
      .get('/v1/api');

    expect(response.status).toBe(401);
    expect(response.text).toBe('Unauthorized');
  });

  it('should return 403 if invalid token provided', async () => {
    const response = await request(app)
      .get('/v1/api')
      .set('Authorization', 'Bearer invalid.token');

    expect(response.status).toBe(403);
    expect(response.text).toBe('Forbidden');
  });

  it('should call next() if valid token provided', async () => {
    const token = jwt.sign({ user: process.env.AUTH_USER }, process.env.JWT_SECRET_KEY ?? 'd3f4ult_s3cr3t_k3y');

    const response = await request(app)
      .get('/v1/api/person')
      .set('Authorization', `Bearer ${token}`);

    expect(response.status).toBe(200);
  });
});
