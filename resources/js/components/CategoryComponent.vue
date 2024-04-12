<template>
    <div class="categories">
        <div class="categories_slick">
            <VueSlickCarousel v-bind="settings" v-if="categories.length">
                <div class="item-sli" v-for="(category,imageIndex) in categories" :key="imageIndex">
                    <div class="cate_group_2">
                        <h3>
                            <a href="#" class="cat-title">{{ category.name }}</a>
                        </h3>
                        <div class="card">
                            <div class="image-box">
                                <img class="w-100"
                                     :src="category.src"
                                     :alt="category.name">
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


export default {
    name: 'MyComponent',
    components: {VueSlickCarousel},
    mounted() {
        this.fetchCategories();
    },
    data() {
        return {
            keywords: '',
            categories: {},
            settings: {
                "dots": true,
                "infinite": false,
                "speed": 500,
                "slidesToShow": 8,
                "slidesToScroll": 8,
                "initialSlide": 0,
                "rows": 2,
                "slidesPerRow": 1,
                "responsive": [
                    {
                        "breakpoint": 1250,
                        "settings": {
                            "slidesToShow": 8,
                            "slidesToScroll": 8
                        }
                    },
                    {
                        "breakpoint": 1024,
                        "settings": {
                            "slidesToShow": 6,
                            "slidesToScroll": 6,
                        }
                    },
                    {
                        "breakpoint": 600,
                        "settings": {
                            "slidesToShow": 5,
                            "slidesToScroll": 5,

                        }
                    },
                    {
                        "breakpoint": 480,
                        "settings": {
                            "slidesToShow": 4,
                            "slidesToScroll": 4
                        }
                    }
                ]
            }
        }
    },
    created() {
        this.$bus.on('search', value => {
            this.keywords = value;
            this.fetchCategories()
        })
    },
    methods: {
        fetchCategories() {
            axios.get(`api/categories`, {params: {q: this.keywords}})
                .then(response => {
                    this.categories = response.data;
                })
                .catch(e => {
                    this.errors.push(e)
                })
        }
    }
}
</script>
