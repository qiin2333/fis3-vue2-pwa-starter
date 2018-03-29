import Vue from 'vue';
import VueRouter from 'vue-router';

import { Col, Row } from 'element-ui';

import App from './app.vue';

Vue.use(VueRouter);
Vue.use(Row);
Vue.use(Col);

const router = new VueRouter({
    routes: [
        {
            name: 'home',
            path: '/',
            component: resolve => require.async('index.vue', resolve)
        }, {
            path: '*',
            redirect: '/'
        }
    ]
})

let app = new Vue({
    // store,
    router,
    ...App
});

// https://huangxuan.me/2017/07/12/upgrading-eleme-to-pwa/#fast-skeleton-painting-with-settimeout-hack
setTimeout(() => app.$mount('#app'), 0);
