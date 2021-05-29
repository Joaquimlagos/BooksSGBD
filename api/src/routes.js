const express = require('express');
const BookController = require('./controllers/BookController');
const router = express.Router();
const corsMiddleware = require('./middlewares/corsMiddleware');

const bookController = new BookController();

router.get("/books", corsMiddleware, bookController.consulting);

module.exports = router;