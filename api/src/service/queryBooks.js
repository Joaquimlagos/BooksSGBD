const db = require('../database/index');

async function queryBooks() {
  const result = {
    data: null,
    error: false,
    message: ""
  }

  try {
    const booksResult = await db('author')
      .join('book', 'author.id', '=', 'book.id_author')
      .select('book.title', 'book.year', 'book.price', 'author.first_name', 'author.last_name')
      .orderBy('book.year', 'asc');

    result.data = booksResult;
    result.message = "Consulta feita com sucesso";

  } catch (error) {
    result.error = true;
    result.message = error;
  }

  return result;
}

module.exports = queryBooks;