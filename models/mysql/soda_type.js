const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const SodaType = sequelize.define(
    "soda",
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
        tableName: 'soda_type',
        timestamps: false
    }
);

module.exports = SodaType;