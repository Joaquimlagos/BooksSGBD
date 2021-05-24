const db = require('../database/index');
 
    function queryAuthors(req,res){
        let authorArray = [];

        db('author')
        .select('first_name','last_name')
        .then(authorArray => {
        authorArray.push(authorArray)
        console.log(authorArray);
        return res.status(200).json({
            Response: 'funcionando. autor',
          });
        })
    }




module.exports = queryAuthors;