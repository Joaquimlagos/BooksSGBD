import axios from 'axios';

const apiService = axios.create({ 
  baseURL: "localhost:3030"
});

export default apiService;