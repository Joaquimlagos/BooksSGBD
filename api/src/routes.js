const express = require('express');
const BookController = require('./controllers/BookController');
const router = express.Router();

const bookController = new BookController();

router.get("/books", bookController.consulting);

module.exports = router;