@extends('layouts.app')
@section('content')
    @include('inc.slider',['sliders'=>$sliders])
    <div class="container">
        <div class="search-box">
            <form action="{{route('index')}}" method="GET" class="d-flex justify-content-between">
                <div class="input-search flex-grow-1 position-relative">
                    <input class="w-100 form-control" type="text" name="q" value="{{request('q')}}">
                    <span class="position-absolute icon-search"><i class="fa-solid fa-magnifying-glass"></i></span>
                </div>
                <button type="submit" class="btn btn-search btn-danger"><i class="fa-solid fa-bars-filter"></i></button>
            </form>
        </div>
        <div class="bestsellers" id="lightgallery1">
            <div class="heading">
                <h2><i class="fa-solid fa-fire"></i> Best Selling</h2>
            </div>
            <div id="bestsellers_slick">
                @foreach($bestSellers as $product)
                    <div class="item-sli">
                        @include('inc.product_item',['product'=>$product])
                    </div>
                @endforeach
            </div>
        </div>
        <hr>
        <div class="categories">
            <div class="categories_slick">
                @foreach($categories->chunk(2) as $chunk)
                    <div class="item-sli">
                        @foreach($chunk as $category)
                            @include('inc.category_item',['category'=>$category])
                        @endforeach
                    </div>
                @endforeach
            </div>
        </div>
        <hr>
        <div class="products" id="lightgallery">
            <div class="row mbox">
                @foreach($products as $product)
                    <div class="col-6 col-md-4 col-xl-3 pbox">
                        @include('inc.product_item',['product'=>$product])
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
