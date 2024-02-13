const models = require('../models');
const Flavor = models.flavorModel;


const getFlavors = async(req,res) => {
    const data = await Flavor.findAll();
    res.status(200).json(data);
}

module.exports = getFlavors;