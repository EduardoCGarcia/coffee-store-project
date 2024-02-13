const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");
const Flavor = require("../mysql/flavor")

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
module.exports = Producto;