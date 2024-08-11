import express from 'express';
import cors from 'cors';
import OrderRoute from './routes/OrderRoute.js';
import dotenv from 'dotenv';
dotenv.config();

const app = express();
const port = process.env.PORT;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(OrderRoute);


app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});