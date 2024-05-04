import { createApp } from 'vue';
import { createI18n } from 'vue-i18n';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from 'axios';

import "../css/app.css";


axios.defaults.baseURL = 'http://localhost';

// Laravel Sanctum
axios.defaults.withCredentials = true;
// axios.defaults.withXSRFToken = true;


async function loadLocaleMessages(locale) {
    try {
        const response = await fetch(`/locales/${locale}.json`);
        if (!response.ok) {
            throw new Error(`Failed to load ${locale} messages`);
        }
        return await response.json();
    } catch (error) {
        console.error(error);
        return {};
    }
}

const i18n = createI18n({
    locale: 'en',  // idioma predeterminado
    fallbackLocale: 'en',  // idioma de respaldo
    messages: {}
});

router.beforeEach(async (to, from, next) => {
    const lang = to.params.lang || 'en';
    console.log(i18n.global.locale, lang)
    //if (i18n.global.locale !== lang) {
        const messages = await loadLocaleMessages(lang);
        i18n.global.setLocaleMessage(lang, messages);
        i18n.global.locale = lang;
    //}
    next();
})

store.dispatch('authenticate').then(() => {
    createApp(App)
        .use(router)
        .use(i18n)
        .use(store)
        .mount('#app');
})
