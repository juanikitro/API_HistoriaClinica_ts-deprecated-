import { Application, Request, Response } from 'express';
import db from "../db/connection"

export const loadApiEndpoints = (app: Application): void => {
	app.get('/v1', (_req: Request, res: Response) => {
		return res.status(200).send('hi!');
	});

	app.get('/v1/person', async (req, res) => {
		try {
			const pool = await db.poolConnect;
			const result = await pool.request().query('SELECT * FROM dbo.Persona');
			res.send(result.recordset);
		} catch (error) {
			console.error('Error al ejecutar la consulta:', error);
			res.status(500).send('Error de servidor');
		}
	})
};
