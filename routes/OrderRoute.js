import express from "express";
import * as OrderController from "../controllers/OrderController.js";

const router = express.Router();

router.post("/orders", OrderController.createOrder);
router.get("/bills/:tableNumber", OrderController.getBill);

export default router;
