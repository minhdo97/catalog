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
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/gh/eliyantosarage/font-awesome-pro@main/fontawesome-pro-6.5.1-web/css/all.min.css">
    <link rel="stylesheet" href="{{asset('assets/libs/slick/slick.css')}}"/>
    <link rel="stylesheet" href="{{asset('assets/libs/slick/slick-theme.css')}}"/>
    <link rel="stylesheet" href="{{asset('assets/libs/light/css/lightgallery.css')}}"/>
    <!-- Custom Style -->
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
</head>
<body>
@include('layouts.header')
@yield('content')
<!-- Scripts -->
<script src="{{asset('assets/js/jquery.min.js')}}"></script>
<script src="{{asset('assets/js/popper.min.js')}}"></script>
<script src="{{asset('assets/libs/bootstrap/js/bootstrap.js')}}"></script>
<script src="{{asset('assets/libs/light/js/lightgallery.min.js')}}"></script>
<script src="{{asset('assets/libs/slick/slick.min.js')}}"></script>
<!-- Custom Scripts -->
<script src="{{asset('assets/js/main.js')}}"></script>
</body>
</html>
