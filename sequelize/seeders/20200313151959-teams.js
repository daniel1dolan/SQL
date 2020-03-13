"use strict";

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert(
      "teams",
      [
        {
          name: "Barca",
          location: "Spain",
          createdAt: new Date(),
          updatedAt: new Date()
        },
        {
          name: "G2",
          location: "USA",
          createdAt: new Date(),
          updatedAt: new Date()
        },
        {
          name: "Rogue",
          location: "Somewhere",
          createdAt: new Date(),
          updatedAt: new Date()
        }
      ],
      {}
    );
  },

  down: (queryInterface, Sequelize) => {
    /*
      Add reverting commands here.
      Return a promise to correctly handle asynchronicity.

      Example:
      return queryInterface.bulkDelete('People', null, {});
    */
  }
};
