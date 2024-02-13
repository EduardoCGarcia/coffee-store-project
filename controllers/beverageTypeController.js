const models = require('../models');
const BeverageType = models.beverageTypeModel;


const getBeverageTypes = async(req,res) => {
    const data = await BeverageType.findAll();
    res.status(200).json(data);
}

module.exports = getBeverageTypes;