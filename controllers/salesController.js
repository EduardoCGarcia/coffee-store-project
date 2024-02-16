const { matchedData } = require("express-validator");
const { sequelize } = require("../db/conn");
const Sale = require('../models').salesModel;
const SaleDetail = require('../models').salesDetailModel;

const createSale = async (req, res) => {
    const t = await sequelize.transaction();
    try {
        
        const { date, total, products } = matchedData(req);

        const newSale = await Sale.create({}, { transaction: t });

        const salesDetailsPromises = products.map(product => {
            return SaleDetail.create({
                sales_id: newSale.id,
                product_id: product.product_id,
                quantity: product.quantity
            }, { transaction: t });
        });

        await Promise.all(salesDetailsPromises);

        await t.commit();

        res.status(201).json({
            message: "Venta creada exitosamente",
            sale: newSale
        })
    } catch (error) {

        await t.rollback();

        console.error("Error al crear la venta:", error);
        res.status(500).json({
            message: "Hubo un error al crear la venta",
            error: error.message
        });
    }



}

module.exports = createSale;