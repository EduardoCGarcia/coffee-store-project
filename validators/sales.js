const { check, body } = require("express-validator");
const validateResults = require('../utils/handleValidator');

const validatorCreateSale = [
    check('date')
        .custom(value => {
            if (isNaN(new Date(value).getTime())) {
                throw new Error();
            }
            return true;
        })
        .withMessage('La fecha debe ser válida')
        .not()
        .isEmpty(),
    check('total')
        .isDecimal()
        .withMessage('El total debe ser un número decimal válido')
        .not()
        .isEmpty()
        .withMessage('El total no puede estar vacío'),

        body('products')
        .isArray()
        .withMessage('Los productos deben ser proporcionados como un arreglo')
        .notEmpty()
        .withMessage('El arreglo de productos no puede estar vacío')
        .custom(products => {
            // Verificar si cada producto del arreglo tiene una estructura válida
            for (const product of products) {
                if (!product.hasOwnProperty('product_id') || !product.hasOwnProperty('quantity')) {
                    throw new Error('Cada producto debe tener un ID de producto y una cantidad');
                }
                if (typeof product.product_id !== 'number' || typeof product.quantity !== 'number' || product.quantity <= 0) {
                    throw new Error('Los IDs de producto deben ser números positivos y la cantidad debe ser un número mayor que cero');
                }
            }
            return true;
        }),
        
        (req, res, next) => {
            return validateResults(req, res, next);
        }
];

module.exports = { validatorCreateSale };
