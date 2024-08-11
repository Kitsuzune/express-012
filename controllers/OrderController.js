import Order from "../models/Order.js";
import OrderItem from "../models/OrderItem.js";
import Product from "../models/Product.js";
import Table from "../models/Table.js";
import { Sequelize } from "sequelize";

const getPrinter = (product) => {
    if (product.category === 'minuman') return 'C'; 
    if (product.category === 'makanan') return 'B'; 
    if (product.category === 'promo') {

        return ['B', 'C'];
    }
    return 'A';
};

export const createOrder = async (req, res) => {
    const { tableNumber, items } = req.body;

    try {

        const order = await Order.create({
            tableNumber,
            totalAmount: 0, 
        });

        let totalAmount = 0;
        let printers = new Set(); 

        for (const item of items) {
            const product = await Product.findByPk(item.productId);
            if (!product) {
                return res.status(404).json({ message: `Product with ID ${item.productId} not found.` });
            }

            totalAmount += product.price * item.quantity;

            const productPrinters = getPrinter(product);
            if (Array.isArray(productPrinters)) {
                productPrinters.forEach(printer => printers.add(printer));
            } else {
                printers.add(productPrinters);
            }

            await OrderItem.create({
                orderId: order.id,
                productId: product.id,
                quantity: item.quantity,
            });
        }

        await order.update({ totalAmount });

        res.status(201).json({
            message: "Order created successfully.",
            order,
            printers: Array.from(printers),
        });
    } catch (error) {
        res.status(500).json({ message: "Error creating order.", error: error.message });
    }
};

export const getBill = async (req, res) => {
    const { tableNumber } = req.params;

    try {
        const order = await Order.findOne({
            where: { tableNumber },
            order: [['createdAt', 'DESC']],
            include: [
                {
                    model: OrderItem,
                    include: [Product],
                },
            ],
        });

        if (!order) {
            return res.status(404).json({ message: `No orders found for table ${tableNumber}.` });
        }

        const bill = order.OrderItems.map(item => ({
            product: item.Product.name,
            variant: item.Product.variant,
            quantity: item.quantity,
            price: item.Product.price,
            total: item.Product.price * item.quantity,
        }));

        res.status(200).json({
            message: "Bill retrieved successfully.",
            tableNumber,
            order: order.id,
            bill,
            totalAmount: order.totalAmount,
        });
    } catch (error) {
        res.status(500).json({ message: "Error retrieving bill.", error: error.message });
    }
};
