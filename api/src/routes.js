const express = require('express');
const bookController = require('./controllers/BookController');
const router = express.Router();

router.get("/books", bookController);

module.exports = router;