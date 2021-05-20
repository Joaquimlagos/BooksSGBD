const db = require('../database/index');
 
    function query(req,res){
        let booksArray = [];

        db('book')
        .select('title','year','price')
        .where('autor', 'Tolkien')
        .then(books => {
        booksArray.push(books)
        console.log(booksArray);
        })
    }




module.exports = query;