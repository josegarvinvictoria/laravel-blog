import { createRouter, createWebHistory } from 'vue-router';
import store from '../store';

import Home from '../pages/Home.vue';
import Post from '../pages/Post.vue';
import Login from '../pages/Login.vue';
import Posts from '../pages/admin/Posts.vue';
import Edit from '../pages/admin/Edit.vue';

const routes = [
    {
        path: '/',
        redirect: '/en'  // Redirige de la raíz a /en
    },
    {
        path: '/:lang',
        component: {
            name: 'Layout',
            template: '<router-view></router-view>'
        },
        children: [
            {
                path: '',
                name: 'home',
                component: Home
            },
            {
                path: 'posts/:slug',
                name: 'post',
                component: Post,
                props: true
            },
            {
                path: 'admin/login',
                name: 'admin.login',
                component: Login,
                beforeEnter: (to, from, next) => {
                    return store.getters.authenticated
                        ? next({ name: 'admin.posts ' })
                        : next();
                }
            },
            {
                path: 'admin/posts',
                name: 'admin.posts',
                component: Posts,
                beforeEnter: (to, from, next) => {
                    return !store.getters.authenticated
                        ? next({ name: 'admin.login' })
                        : next();
                }
            },
            {
                path: 'admin/posts/:uuid/edit',
                name: 'admin.posts.edit',
                component: Edit,
                props: true,
                beforeEnter: (to, from, next) => {
                    return !store.getters.authenticated
                        ? next({ name: 'admin.login' })
                        : next();
                }
            },
        ]
    },
    {
        path: '/:lang/:pathMatch(.*)*',
        redirect: '/en'
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
