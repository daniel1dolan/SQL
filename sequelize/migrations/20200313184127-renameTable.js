"use strict";

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.renameTable("users", "tests");
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.renameTable("tests", "users");
  }
};
