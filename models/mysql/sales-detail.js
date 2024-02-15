const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");
const Product = require('./product');
const Sales = require('./sales');

const SaleDetail = sequelize.define(
    "sale_detail",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        sales_id: {
            type: DataTypes.INTEGER,
            allowNull: true,
        },
        product_id: {
            type: DataTypes.INTEGER,
            allowNull: true,
        },
        quantity: {
            type: DataTypes.INTEGER,
            allowNull: true,
        }
    },
    {
        tableName: 'sales_detail',
        timestamps: false
    }
);

SaleDetail.belongsTo(Product, {foreignKey:"product_id", as: "Product"});
SaleDetail.belongsTo(Product, {foreignKey:"sales_id", as: "Sale"});

module.exports = SaleDetail;
