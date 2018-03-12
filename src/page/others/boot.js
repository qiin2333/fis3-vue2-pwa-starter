import Vue from 'vue';
import VueRouter from 'vue-router';

import {Col, Row} from 'element-ui';

import App from './app.vue';

Vue.use(VueRouter);
Vue.use(Row);
Vue.use(Col);

const router = new VueRouter({
    routes: []
})

new Vue({
    el: '#app',
    render: h => h(App),
    router
});
