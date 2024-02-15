const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const Sale = sequelize.define(
    "sale",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        date: {
            type: DataTypes.DATE,
            allowNull: true,
            defaultValue: DataTypes.NOW
        },
        total: {
            type: DataTypes.DECIMAL(10, 2),
            allowNull: true,
            defaultValue: 0.00
        }
    },
    {
        tableName: 'sales',
        timestamps: false
    }
);

module.exports = Sale;
