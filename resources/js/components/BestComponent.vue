<template>
    <div class="bestsellers">
        <CoolLightBox v-if="products.length"
                      :items="products"
                      :index="index"
                      @close="index = null">
        </CoolLightBox>
        <div class="heading">
            <h2><i class="fa-solid fa-fire"></i> Best Selling</h2>
        </div>
        <div id="bestsellers_slick">
            <VueSlickCarousel v-bind="settings" @init="onInitCarousel" v-if="products.length">
                <div class="item-sli" v-for="(product,imageIndex) in products" :key="imageIndex">
                    <div class="product_box">
                        <div class="card">
                            <span v-if="product.hot_sell" class="hot">HOT</span>
                            <div class="image-box" @click="index = imageIndex">
                                <img class="w-100"
                                     :src="product.src"
                                     :alt="product.name">
                            </div>
                            <div class="title-box text-center">
                                <div>
                                    <a class="" href="#"><h3>{{ product.name }}</h3></a>
                                </div>
                                <div class="divider-line"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </VueSlickCarousel>
        </div>

        <hr>
    </div>
</template>

<script>
import VueSlickCarousel from 'vue-slick-carousel'
import 'vue-slick-carousel/dist/vue-slick-carousel.css'
// optional style for arrows & dots
import 'vue-slick-carousel/dist/vue-slick-carousel-theme.css'
import CoolLightBox from 'vue-cool-lightbox'
import 'vue-cool-lightbox/dist/vue-cool-lightbox.min.css'

export default {
    name: 'MyComponent',
    components: {VueSlickCarousel, CoolLightBox},
    mounted() {
        this.fetchProducts();
    },
    data() {
        return {
            index: null,
            keywords: '',
            products: {},
            settings: {
                "infinite": true,
                "dots": true,
                "speed": 500,
                "slidesToShow": 5,
                "slidesToScroll": 5,
                "initialSlide": 1,
                "responsive": [
                    {
                        "breakpoint": 1250,
                        "settings": {
                            "slidesToShow": 5,
                            "slidesToScroll": 5,

                        }
                    },
                    {
                        "breakpoint": 1024,
                        "settings": {
                            "slidesToShow": 4,
                            "slidesToScroll": 4,

                        }
                    },
                    {
                        "breakpoint": 600,
                        "settings": {
                            "slidesToShow": 3,
                            "slidesToScroll": 3
                        }
                    },
                    {
                        "breakpoint": 480,
                        "settings": {
                            "slidesToShow": 2,
                            "slidesToScroll": 2
                        }
                    }
                ]
            }
        }
    },
    created() {
        this.$bus.on('search', value => {
            this.keywords = value;
            this.fetchProducts()
        })
    },
    methods: {
        onInitCarousel() {
        },
        fetchProducts() {
            axios.get(`api/best-sellers`, {params: {q: this.keywords}})
                .then(response => {
                    this.products = response.data;
                })
                .catch(e => {
                    this.errors.push(e)
                })
        }
    }
}
</script>
