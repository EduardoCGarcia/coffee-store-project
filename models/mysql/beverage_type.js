const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const BeverageType = sequelize.define(
    "beverage",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        type: {
            type: DataTypes.STRING,
        }
    },
    {
        tableName: 'beverage_type',
        timestamps: false 
    }
);

module.exports = BeverageType;