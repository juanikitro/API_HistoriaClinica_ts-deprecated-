import dotenv from 'dotenv';
import sql from 'mssql';

dotenv.config();

const dbConfig = {
  server: process.env.DB_SERVER ?? '',
  user: process.env.DB_USER ?? '',
  password: process.env.DB_PASSWORD ?? '',
  database: process.env.DB_DATABASE ?? '',
  options: {
    trustServerCertificate: true,
    encrypt: false,
  },
};

// TODO: agregar un catch :D
const pool = new sql.ConnectionPool(dbConfig);
const poolConnect = pool.connect();

export default {
  pool,
  poolConnect,
};
