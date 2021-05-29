import axios from 'axios';

const apiService = axios.create({ 
  baseURL: "http://localhost:3030"
});

export default apiService;