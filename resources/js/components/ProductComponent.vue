<template>
    <div class="products">
        <CoolLightBox v-if="products.length"
                      :items="products"
                      :index="index"
                      @close="index = null">
        </CoolLightBox>
        <div class="row mbox">
            <div class="col-6 col-md-4 col-xl-3 pbox" v-for="(product,imageIndex) in products" :key="imageIndex">
                <div class="product_box">
                    <div class="card">
                        <div class="image-box" @click="index = imageIndex">
                            <img class="w-100"
                                 :src="product.src"
                                 :alt="product.name">
                        </div>
                        <div class="title-box text-center">
                            <div>
                                <a class="#" href="#"><h3>{{ product.name }}</h3></a>
                            </div>
                            <div class="divider-line"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
    created() {
        this.$bus.on('search', value => {
            this.keywords = value;
            this.fetchProducts()
        })
    },
    data() {
        return {
            index: null,
            keywords: '',
            products: {},
            settings: {
                "dots": true,
                "infinite": false,
                "speed": 500,
                "slidesToShow": 4,
                "slidesToScroll": 4,
                "initialSlide": 0,
                "responsive": [
                    {
                        "breakpoint": 1024,
                        "settings": {
                            "slidesToShow": 3,
                            "slidesToScroll": 3,
                            "infinite": true,
                            "dots": true
                        }
                    },
                    {
                        "breakpoint": 600,
                        "settings": {
                            "slidesToShow": 2,
                            "slidesToScroll": 2,
                            "initialSlide": 2
                        }
                    },
                    {
                        "breakpoint": 480,
                        "settings": {
                            "slidesToShow": 1,
                            "slidesToScroll": 1
                        }
                    }
                ]
            }
        }
    },
    methods: {
        onInitCarousel() {
            console.log('our carousel is ready')
        },
        fetchProducts() {
            axios.get(`api/products`, {params: {q: this.keywords}})
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
