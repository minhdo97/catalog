<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function sliders()
    {
        $sliders = Slider::latest()->get();
        return response()->json($sliders);
    }

    public function categories(Request $request)
    {
        $q = $request->get('q');
        $categories = ProductCategory::latest()->when($q, function ($query) use ($q) {
            $query->where('name', 'like', '%' . trim($q) . '%');
        })->get();
        return response()->json($categories);
    }

    public function bestSellers(Request $request)
    {
        $q = $request->get('q');
        $bestSellers = Product::latest()->when($q, function ($query) use ($q) {
            $query->where('name', 'like', '%' . trim($q) . '%');
        })->where('hot_sell', 1)->get();
        return response()->json($bestSellers);
    }

    public function products(Request $request)
    {
        $q = $request->get('q');
        $products = Product::latest()->when($q, function ($query) use ($q) {
            $query->where('name', 'like', '%' . trim($q) . '%');
        })->get();
        return response()->json($products);
    }

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
