"use strict";
module.exports = (sequelize, DataTypes) => {
  const team = sequelize.define(
    "team",
    {
      name: DataTypes.STRING,
      location: DataTypes.STRING
    },
    {}
  );
  team.associate = function(models) {
    // associations can be defined here
    team.hasMany(models.player, { foreignKey: "teamID" });
  };
  return team;
};
