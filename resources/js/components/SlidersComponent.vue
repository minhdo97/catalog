<template>
    <div class="sliders">
        <VueSlickCarousel v-bind="settings" v-if="sliders.length">
            <div v-for="(slider,imageIndex) in sliders" :key="imageIndex">
                <img class="w-100" :src="slider.src" alt="">
            </div>
        </VueSlickCarousel>
    </div>
</template>

<script>
import VueSlickCarousel from 'vue-slick-carousel'
import 'vue-slick-carousel/dist/vue-slick-carousel.css'
// optional style for arrows & dots
import 'vue-slick-carousel/dist/vue-slick-carousel-theme.css'

export default {
    name: 'MyComponent',
    components: {VueSlickCarousel},
    mounted() {
        this.fetchSliders();
    },
    data() {
        return {
            index: null,
            sliders: {},
            settings: {
                "dots": true,
                "dotsClass": "slick-dots custom-dot-class",
                "edgeFriction": 0.35,
                "infinite": false,
                "speed": 500,
                "slidesToShow": 1,
                "slidesToScroll": 1
            }
        }
    },
    methods: {
        fetchSliders() {
            axios.get(`api/sliders`)
                .then(response => {
                    this.sliders = response.data;
                })
                .catch(e => {
                    this.errors.push(e)
                })
        }
    }
}
</script>
