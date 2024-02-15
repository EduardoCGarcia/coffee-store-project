const express = require('express');
const { validatorCreateSale } = require('../validators/sales');
const createSale = require('../controllers/salesController');
const router = express.Router();

router.post("",validatorCreateSale, createSale);

module.exports = router