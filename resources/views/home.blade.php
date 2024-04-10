@extends('layouts.app')

@section('content')
    <div class="sliders">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/hinh-dep-5.jpg"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/hinh-dep-5.jpg"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/hinh-dep-5.jpg"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="container">
        <div class="search-box">
            <form action="#" class="d-flex justify-content-between">
                <div class="input-search flex-grow-1 position-relative">
                    <input class="w-100 form-control" type="text" name="q" id="">
                    <span class="position-absolute icon-search"><i class="fa-solid fa-magnifying-glass"></i></span>
                </div>
                <button class="btn btn-search btn-danger"><i class="fa-solid fa-bars-filter"></i></button>
            </form>
        </div>
        <div class="bestsellers" id="lightgallery1">
            <div id="bestsellers_slick">
                @foreach(range(0,10) as $i)
                    <div class="item-sli">
                        <div class="product_box">
                            <div class="card">
                                <div class="image-box">
                                    <a href="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg" class="lightgallery">
                                        <img class="w-100"
                                             src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg"
                                             alt="">
                                    </a>
                                </div>
                                <div class="title-box text-center">
                                    <a class="" href="#"><h3>San pham 001</h3></a>
                                    <div class="divider-line"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <hr>
        <div class="categories">
            <div class="categories_slick">
                @foreach(range(0,10) as $i)
                    <div class="item-sli">
                        <div class="cate_group_2">
                            <a href="#" class="cat-title"> Danh mục 1</a>
                            <div class="card">
                                <div class="image-box">

                                    <img class="w-100"
                                         src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg"
                                         alt="">
                                </div>
                            </div>
                        </div>

                        <div class="cate_group_2">
                            <a href="#" class="cat-title"> Danh mục 1</a>
                            <div class="card">
                                <div class="image-box">
                                    <img class="w-100"
                                         src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg"
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <hr>
        <div class="products " id="lightgallery">
            <div class="row">
                @foreach(range(0,10) as $i)
                    <div class="col-6">
                        <div class="product_box">
                            <div class="card">
                                <div class="image-box">
                                    <a href="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg"
                                       class="lightgallery">
                                        <img class="w-100"
                                             src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474023DyS/hinh-anh-hello-cute-dep-xin-chao-2.jpg"
                                             alt="">
                                    </a>
                                </div>
                                <div class="title-box text-center">
                                    <a class="" href="#"><h3>San pham 001</h3></a>
                                    <div class="divider-line"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
