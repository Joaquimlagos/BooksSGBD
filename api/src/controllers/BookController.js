const queryBooks = require("../service/queryBooks");

class BookController {
  async consulting(req, res) {
    const booksQuery = await queryBooks();
    return res.status(200).json({
       Response: booksQuery 
    });
  }
}
module.exports = BookController;
