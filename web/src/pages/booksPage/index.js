import React, {useEffect, useState} from 'react';
import api from '../../service/apiService';

const BooksPage = () => {

    const [books, setBooks] = useState([]);

    useEffect(async () => { 
        try {
            const response = await api.get('/books');
    
            if(response.status == 200){
                setBooks(response.Response.data)
                console.log(response)
            }
        } catch (error) {
            console.log('faleceu')
        }
    }, []);

    return (  
        <div>
            <p>{books}</p>
        </div>
    )
}

export default BooksPage;