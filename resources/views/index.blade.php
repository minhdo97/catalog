<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>CÔNG TY TNHH SẢN XUẤT & TM TIM ĐỎ</title>
    <link href="{{imagePath(config('general.favicon'))}}" rel="shortcut icon" type="image/x-icon">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/gh/eliyantosarage/font-awesome-pro@main/fontawesome-pro-6.5.1-web/css/all.min.css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
<div id="app">
    <header>
        <div class="container">
            <a href="{{url('/')}}">
                <img src="{{imagePath(config('general.logo'))}}" alt="Logo">
            </a>
        </div>
    </header>
    <sliders-component></sliders-component>
    <div class="container">
        <search-component @search="keywords"></search-component>
        <best-component></best-component>
        <category-component></category-component>
        <product-component></product-component>
    </div>

</div>
</body>
</html>
