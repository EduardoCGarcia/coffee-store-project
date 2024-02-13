const models = require('../models');
const Product = models.productModel;
const Flavor = models.flavorModel;


const getProducts = async(req,res) => {
    const data = await Product.findAll({
        include:[{
            model: Flavor,
            as: "Flavor"
        }]
    });
    res.status(200).json(data);
}

module.exports = getProducts;