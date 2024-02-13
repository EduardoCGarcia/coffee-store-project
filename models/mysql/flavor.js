const { sequelize } = require("../../db/conn");
const { DataTypes } = require("sequelize");

const Flavor = sequelize.define(
    "flavor",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        flavor_name: {
            type: DataTypes.STRING,
        }
    },
    {
        tableName: 'flavor',
        timestamps: false
    }
);

module.exports = Flavor;