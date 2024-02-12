const ENGINE_DB = process.env.ENGINE_DB;

const path = require('path');
const pathModels = (ENGINE_DB === 'nosql') ? path.join(__dirname, 'nosql') : path.join(__dirname, 'mysql');

/**
 * Models object.
 */
const models = {
    
    productModel: require(`${pathModels}/product`),
}

module.exports = models;