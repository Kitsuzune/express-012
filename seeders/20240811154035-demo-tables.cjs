'use strict';
const { v4: uuidv4 } = require('uuid');

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('Tables', [
      { id: uuidv4(), number: 'MEJA NO 1', createdAt: new Date(), updatedAt: new Date() },
      { id: uuidv4(), number: 'MEJA NO 2', createdAt: new Date(), updatedAt: new Date() },
      { id: uuidv4(), number: 'MEJA NO 3', createdAt: new Date(), updatedAt: new Date() },
    ]);
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('Tables', null, {});
  }
};
