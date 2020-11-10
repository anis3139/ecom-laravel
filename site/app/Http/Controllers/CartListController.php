<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CartModel;
use App\SliderModel;
use App\OthersModel;
use App\CategoryModel;
use App\SocialModel;
use App\OrderModel;
use Illuminate\Support\Facades\DB;

class CartListController extends Controller
{
    public function Index()
    {


        // Order Details
        $logged_user_id = session('userid');
        $orderData = json_decode(OrderModel::orderBy('id', 'desc')
            ->where([
                ['customer_id', '=', $logged_user_id],
                ['status', '=', '0'],
            ])->get());

        // return  $orderData;


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



        return View('CartList', [
            'results' => $results,
            'catResults' => $catResults,
            'feature_products' => $feature_products,
            'othersData' => $othersData,
            'sliders' => $sliders,
            'socialData' => $socialData,
            'orderData' => $orderData
        ]);
        // return view("OrderList");
    }
}
