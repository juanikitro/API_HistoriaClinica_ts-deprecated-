import express from 'express';
import apiEndpoints from '../routes/endpoints';
import authenticateToken from '../middlewares/authenticateToken';

// Create Express server
const app = express();

// Express configuration
app.set('port', process.env.PORT ?? 3000);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Custom Middlewares
app.use('/v1/api', authenticateToken);

apiEndpoints(app);

export default app;
