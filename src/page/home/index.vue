<template>
    <div class="page-index">
        <h2>fis3-vue2-pwa-starter</h2>
        <el-button type="primary">ele button</el-button>
    </div>
</template>

<script>
import Vue from 'vue'
import { Button } from 'element-ui';

Vue.component(Button.name, Button);

export default {
    name: 'index',
};
</script>

<style lang="less">
@import '../../common/css/var.less';

.page-index {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    h2 {
        font-size: 24px;
        font-weight: 500;
        margin-bottom: 28px;
        color: @brand-primary;
    }
}
</style>
