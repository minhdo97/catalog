<template>
    <div class="search-box">
        <form @submit.prevent="searchData()" method="GET" class="d-flex justify-content-between">
            <div class="input-search flex-grow-1 position-relative">
                <input @input="debounceInput" autofocus
                       placeholder="Nhập từ khoá tìm kiếm ..." class="w-100 form-control" type="text"
                       v-model="keywords">
                <span class="position-absolute icon-search"><i class="fa-solid fa-magnifying-glass"></i></span>
            </div>
            <button type="submit" class="btn btn-search btn-danger"><i
                class="fa-solid fa-bars-filter"></i>
            </button>
        </form>
    </div>
</template>
<script>
import _ from 'lodash';

export default {
    data() {
        return {
            keywords: '',
        }
    },
    methods: {
        searchData() {
            this.$bus.emit('search', this.keywords)
        },
        debounceInput: _.debounce(function (e) {
            //this.$store.dispatch('updateInput', e.target.value)
            this.$bus.emit('search', this.keywords)
        }, 500)
    }
}
</script>
