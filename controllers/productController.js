const models = require('../models');
const Product = models.productModel;


const getProducts = async(req,res) => {
    const data = await Product.findAll();
    res.status(200).json(data);
}

module.exports = getProducts;