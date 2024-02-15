const { check } = require("express-validator");
const validateResults = require('../utils/handleValidator');


const validatorCreateSalesDetail = [
    check('sales_id')
        .isInt({ min: 1 })
        .withMessage('El ID de venta debe ser un número entero positivo')
        .not()
        .isEmpty()
        .withMessage('El ID de venta no puede estar vacío'),
    check('product_id')
        .isInt({ min: 1 })
        .withMessage('El ID de producto debe ser un número entero positivo')
        .not()
        .isEmpty()
        .withMessage('El ID de producto no puede estar vacío'),
    check('quantity')
        .isInt({ min: 1 })
        .withMessage('La cantidad debe ser un número entero positivo')
        .not()
        .isEmpty()
        .withMessage('La cantidad no puede estar vacía'),

    (req, res, next) => {
        return validateResults(req, res, next);
    }
];

module.exports = { validatorCreateSalesDetail };
