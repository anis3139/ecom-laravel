<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\CategoryModel;
use App\productImage;
use App\ProductModel;
use App\SliderModel;
use App\VisitorModel;
use App\OthersModel;
use App\SocialModel;
use App\CartModel;

class HomeController extends Controller
{
    public function HomeIndex()
    {

        $UserIP = $_SERVER['REMOTE_ADDR'];
        date_default_timezone_set("Asia/Dhaka");
        $timeDate = date("Y-m-d h:i:sa");
        VisitorModel::insert(['ip_address' => $UserIP, 'visit_time' => $timeDate]);

        $catResults = json_decode(CategoryModel::all());
        $sliders = json_decode(SliderModel::all());
        $othersData = json_decode(OthersModel::orderBy('id', 'desc')->get()->first());

        // return $othersData;

        $socialData = json_decode(SocialModel::orderBy('id', 'desc')->get()->first());


        $results =  DB::table('products')
            ->select('products.id', 'products.title', 'products.category_id', 'products.description', 'products.slug', 'products.offer', 'products.quantity', 'products.price', 'products.images', 'category.category_name', 'brand.brand_name')
            ->join('category', 'category.id', '=', 'products.category_id')
            ->join('brand', 'brand.id', '=', 'products.brand_id')
            ->get();


        $feature_products =  DB::table('products')
            ->select('products.id', 'products.title', 'products.category_id', 'products.description', 'products.slug', 'products.offer', 'products.quantity', 'products.price', 'products.images', 'category.category_name', 'brand.brand_name')
            ->join('category', 'category.id', '=', 'products.category_id')
            ->join('brand', 'brand.id', '=', 'products.brand_id')
            ->where('products.feature_product', '=', 1)
            ->get();



        return View('index', [
            'results' => $results,
            'catResults' => $catResults,
            'feature_products' => $feature_products,
            'othersData' => $othersData,
            'sliders' => $sliders,
            'socialData' => $socialData
        ]);
    }
}
