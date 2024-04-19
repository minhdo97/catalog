<?php

use Illuminate\Support\Facades\Artisan;

Route::group(['prefix' => "api"], function () {
    Route::get('/products', 'Api\HomeController@products')->name('api.products');
    Route::get('/categories', 'Api\HomeController@categories')->name('api.categories');
    Route::get('/sliders', 'Api\HomeController@sliders')->name('api.sliders');
    Route::get('/best-sellers', 'Api\HomeController@bestSellers')->name('api.best_sellers');
});
//Clear Cache facade value:
Route::get('/clear-cache', function() {
  $exitCode = Artisan::call('cache:clear');
  return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
  $exitCode = Artisan::call('optimize');
  return '<h1>Reoptimized class loader</h1>';
});

//Route cache:
Route::get('/route-cache', function() {
  $exitCode = Artisan::call('route:cache');
  return '<h1>Routes cached</h1>';
});

//Clear Route cache:
Route::get('/route-clear', function() {
  $exitCode = Artisan::call('route:clear');
  return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
  $exitCode = Artisan::call('view:clear');
  return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
  $exitCode = Artisan::call('config:cache');
  return '<h1>Clear Config cleared</h1>';
});
Route::get('{any?}', 'HomeController@home')->name('index')->where('any', '.*');



