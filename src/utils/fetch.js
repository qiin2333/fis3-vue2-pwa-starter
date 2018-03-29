import axios from 'axios';
import {API_ROOT, STATUS_CODE_MAP} from 'config';

// 创建axios实例
const service = axios.create({
    baseURL: API_ROOT, // api的base_url
    timeout: 5000, // 请求超时时间

});
//
// request拦截器
// service.interceptors.request.use(async config => {
// }, error => {
// })
//
//  respone拦截器
// service.interceptors.response.use(
//     response => {
//     },
//     error => {
//     }
// )

export default service;
