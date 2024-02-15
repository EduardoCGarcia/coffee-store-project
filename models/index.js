const ENGINE_DB = process.env.ENGINE_DB;

const path = require('path');
const pathModels = (ENGINE_DB === 'nosql') ? path.join(__dirname, 'nosql') : path.join(__dirname, 'mysql');

/**
 * Models object.
 */
const models = {
    productModel: require(`${pathModels}/product`),
    beverageTypeModel: require(`${pathModels}/beverage_type`),
    flavorModel: require(`${pathModels}/flavor`),
    sizeModel: require(`${pathModels}/size`),
    sodaTypeModel: require(`${pathModels}/soda_type`),
    salesModel: require(`${pathModels}/sales`),
    salesDetailModel: require(`${pathModels}/sales-detail`),

}

module.exports = models;