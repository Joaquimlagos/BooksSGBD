const queryBooks = require("../service/queryBooks");
const queryAuthors = require("../service/queryAuthors");

class BookController {
  consulting(req, res) {
    const booksQuery = queryBooks(req,res);
    const authorsQuery = queryAuthors(req,res);
  }
}
module.exports = BookController;
