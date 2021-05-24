const db = require('../database/index');
 
    function queryBooks(req,res){
        let booksArray = [];

        db('book')
        .select('title','year','price')
        .then(booksArray => {
        booksArray.push(booksArray)
        console.log(booksArray);
        return res.status(200).json({
            Response: 'funcionando.',
          });
        })
    }




module.exports = queryBooks;