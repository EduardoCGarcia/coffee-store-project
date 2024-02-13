const models = require('../models');
const Size = models.sizeModel;


const getSizes = async(req,res) => {
    const data = await Size.findAll();
    res.status(200).json(data);
}

module.exports = getSizes;