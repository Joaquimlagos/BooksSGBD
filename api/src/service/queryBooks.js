const db = require('../database/index');

async function queryBooks() {

  try {
    const booksResult = await db('author')
      .join('book', 'author.id', '=', 'book.id_author')
      .select('book.title', 'book.year', 'book.price', 'author.first_name', 'author.last_name')
      .orderBy('book.year', 'asc');

    return booksResult;

  } catch (error) {
   console.log(error);
  }
  const result = booksResult;
  return result;
}

module.exports = queryBooks;