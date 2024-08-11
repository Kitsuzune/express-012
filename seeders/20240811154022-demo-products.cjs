'use strict';
const { v4: uuidv4 } = require('uuid');

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('Products', [
      // Minuman
      {
        id: uuidv4(),
        name: 'Jeruk',
        category: 'minuman',
        variant: 'DINGIN',
        price: 12000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Jeruk',
        category: 'minuman',
        variant: 'PANAS',
        price: 10000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Teh',
        category: 'minuman',
        variant: 'MANIS',
        price: 8000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Teh',
        category: 'minuman',
        variant: 'TAWAR',
        price: 5000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Kopi',
        category: 'minuman',
        variant: 'DINGIN',
        price: 8000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Kopi',
        category: 'minuman',
        variant: 'PANAS',
        price: 6000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Extra Es Batu',
        category: 'minuman',
        variant: null,
        price: 2000,
        printer: 'C',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      // Makanan
      {
        id: uuidv4(),
        name: 'Mie',
        category: 'makanan',
        variant: 'GORENG',
        price: 15000,
        printer: 'B',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Mie',
        category: 'makanan',
        variant: 'KUAH',
        price: 15000,
        printer: 'B',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        id: uuidv4(),
        name: 'Nasi Goreng',
        category: 'makanan',
        variant: null,
        price: 15000,
        printer: 'B',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      // Promo
      {
        id: uuidv4(),
        name: 'Nasi Goreng + Jeruk Dingin',
        category: 'promo',
        variant: null,
        price: 23000,
        printer: 'B',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ]);
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('Products', null, {});
  }
};
