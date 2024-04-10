<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <!-- Styles -->
    <link rel="stylesheet" href="{{asset('assets/libs/bootstrap/css/bootstrap.css')}}">
    <link
        href="https://cdn.jsdelivr.net/gh/eliyantosarage/font-awesome-pro@main/fontawesome-pro-6.5.1-web/css/all.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/libs/lightGallery/css/lightgallery-bundle.css')}}"/>
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
</head>
<body>
<div id="app">
    @include('layouts.header')
    <div class="main">
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
            <div class="bestsellers">

            </div>
            <div class="categories">

            </div>
            <div class="products">

            </div>
        </div>
    </div>

</div>


<!-- Scripts -->
<script src="{{asset('assets/js/jquery.min.js')}}" defer></script>
<script src="{{asset('assets/js/popper.min.js')}}" defer></script>
<script src="{{asset('assets/libs/bootstrap/js/bootstrap.js')}}" defer></script>
<script src="{{asset('assets/libs/lightGallery/lightgallery.min.js')}}" defer></script>
<script src="{{asset('assets/js/main.js')}}" defer></script>
</body>
</html>
