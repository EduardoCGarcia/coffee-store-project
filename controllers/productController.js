const models = require('../models');
const Product = models.productModel;
const Flavor = models.flavorModel;
const Size = models.sizeModel;
const Beverage = models.beverageTypeModel;


const getProducts = async (req, res) => {
    const data = await Product.findAll({
        include: [
            {
                model: Flavor,
                as: "Flavor"
            },
            {
                model: Size,
                as: "Size"
            },
            {
                model: Beverage,
                as: "Beverage"
            },
        ]
    });
    res.status(200).json(data);
}

module.exports = getProducts;