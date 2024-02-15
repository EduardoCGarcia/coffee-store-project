const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");
const Flavor = require("../mysql/flavor")
const Size = require("../mysql/size")
const Beverage = require("../mysql/beverage_type")

const Producto = sequelize.define(
    "product",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        name: {
            type: DataTypes.STRING,
        },
        flavor_id: {
            type: DataTypes.INTEGER,
        },
        size_id: {
            type: DataTypes.INTEGER,
        },
        beverage_type_id: {
            type: DataTypes.INTEGER,
        },
        price: {
            type: DataTypes.FLOAT,
        },
        url: {
            type: DataTypes.STRING,
        }
    },
    {
        tableName: 'product',
        timestamps: false
    }
);

Producto.belongsTo(Flavor, {foreignKey:"flavor_id", as: "Flavor"});
Producto.belongsTo(Size, {foreignKey:"size_id", as: "Size"});
Producto.belongsTo(Beverage, {foreignKey:"beverage_type_id", as: "Beverage"});
module.exports = Producto;