const models = require('../models');
const Soda = models.sodaTypeModel;


const getSodas = async(req,res) => {
    const data = await Soda.findAll();
    res.status(200).json(data);
}

module.exports = getSodas;