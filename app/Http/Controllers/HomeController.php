<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $q = trim(\request('q'));

        $sliders = Slider::latest()->get();

        $categories = ProductCategory::latest()->get();

        $products = Product::latest()->when($q, function ($query) use ($q) {
            $query->where('name', "LIKE", "%$q%");
        })->get();

        $bestSellers = Product::latest()->when($q, function ($query) use ($q) {
            $query->where('name', "LIKE", "%$q%");
        })->where('hot_sell', 1)->get();

        return view('home', [
            'sliders' => $sliders,
            'categories' => $categories,
            'products' => $products,
            'bestSellers' => $bestSellers,
        ]);
    }
}
