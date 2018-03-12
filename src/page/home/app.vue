<template>
<div id="app">
    <!-- <Header :activeIndex="1" ref="header"></Header> -->
    <transition name="fade" mode="out-in">
        <router-view class="app-view"></router-view>
    </transition>
    <!-- <Footer v-if="showFooter"></Footer> -->
</div>
</template>

<script>
import 'element-ui/lib/theme-chalk/index.css';
import 'element-ui/lib/theme-chalk/display.css';

// import Header from '@/base/header/header.vue';
// import Footer from '@/base/footer/foot.vue';

export default {
    // components: {
    //     Header,
    //     Footer
    // },
    data() {
        return {
            showFooter: false
        }
    }
}
</script>
<style lang="less">
#app {
    font-family: PingFang-SC-Medium, 'Microsoft Yahei';
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    .app-view {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        overflow-x: hidden;
        overflow-y: auto;
        &::-webkit-scrollbar {
            width: 0;
            background: transparent;
        }
    }
}
</style>
