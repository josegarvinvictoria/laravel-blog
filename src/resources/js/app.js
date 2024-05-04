//import './bootstrap';

import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from 'axios';

import "../css/app.css";


axios.defaults.baseURL = 'http://localhost';

// Laravel Sanctum
axios.defaults.withCredentials = true;
// axios.defaults.withXSRFToken = true;


store.dispatch('authenticate').then(() => {
    createApp(App)
        .use(router)
        .use(store)
        .mount('#app');
})
