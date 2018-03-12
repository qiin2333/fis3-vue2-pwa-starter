<template>
<div id="app">
    <!-- <Header :activeIndex="1" ref="header"></Header> -->
    <transition name="fade" mode="out-in">
        <router-view class="app-view"></router-view>
    </transition>
    <!-- <Footer v-if="showFooter"></Footer> -->
    <div class="hidden-sm-and-up" style="height: 48px"></div>
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
<style>

</style>
