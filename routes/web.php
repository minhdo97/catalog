<?php
Route::group(['prefix' => "api"], function () {
    Route::get('/products', 'Api\HomeController@products')->name('api.products');
    Route::get('/categories', 'Api\HomeController@categories')->name('api.categories');
    Route::get('/sliders', 'Api\HomeController@sliders')->name('api.sliders');
    Route::get('/best-sellers', 'Api\HomeController@bestSellers')->name('api.best_sellers');
});

Route::get('{any?}', 'HomeController@home')->name('index')->where('any', '.*');



