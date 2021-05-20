const query = require("../service/query");

class BookController {
  consulting(req, res) {
    const queryResult = query(req, res);
  }
}
module.exports = BookController;
