import React, { useEffect, useState } from "react";
import apiService from "../../service/apiService";
import "./index.css";

const BooksPage = () => {
  const [books, setBooks] = useState([]);

  async function getBooks() {
    try {
      const response = await apiService.get("/books");
      console.log(response.data.Response);
      setBooks(response.data.Response);
    } catch (error) {
      console.log(error);
    }
  }
  useEffect(() => {
    getBooks();
  }, []);

  return (
    <div>
      <table>
        <tr>
          <th>Title</th>
          <th>year</th>
          <th>price</th>
          <th>first_name</th>
          <th>last_name</th>
        </tr>
        {books.map((book) => {
          return (
            <tr>
              <th>{book.title}</th>
              <th>{book.year}</th>
              <th>{book.price}</th>
              <th>{book.first_name}</th>
              <th>{book.last_name}</th>
            </tr>
          );
        })}
      </table>
    </div>
  );
};
export default BooksPage;
