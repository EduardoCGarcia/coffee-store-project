const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const Size = sequelize.define(
    "size",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        size_name: {
            type: DataTypes.STRING,
        }
    },
    {
        tableName: 'size',
        timestamps: false
    }
);

module.exports = Size;