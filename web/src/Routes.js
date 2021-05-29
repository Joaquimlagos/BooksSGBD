import React from 'react';
import {BrowserRouter as Router, Route} from 'react-router-dom';

import booksPage from './pages/booksPage';

const Routes = () => {

    return(
        <Router>
            <Route path = "/books" component = {booksPage} />
        </Router>
    )
}

export default Routes;