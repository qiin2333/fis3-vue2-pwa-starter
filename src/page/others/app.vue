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

export default {
    data() {
        return {
            showFooter: false
        }
    }
}
</script>
<style>

</style>
