const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

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
        timestamps: false // Esto evita que se creen los campos createdAt y updatedAt en la tabla.
    }
);

module.exports = Producto;