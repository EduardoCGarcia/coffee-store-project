const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const Producto = sequelize.define(
    "producto",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        flavor_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        size_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        beverage_type_id: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        price: {
            type: DataTypes.FLOAT,
            allowNull: false
        },
        url: {
            type: DataTypes.STRING,
            allowNull: true
        }
    },
    {
        timestamps: false // Esto evita que se creen los campos createdAt y updatedAt en la tabla.
    }
);

module.exports = Producto;