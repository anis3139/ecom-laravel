<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\CategoryModel;
use App\productImage;
use App\product;
use App\OthersModel;
use App\SocialModel;

class ShopController extends Controller
{
    public function ShopIndex(){
       
             $results=  DB::table('products')
             ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
             ->join('category','category.id','=','products.category_id')
             ->join('brand','brand.id','=','products.brand_id')
            ->paginate(30);
    
    
            $feature_products=  DB::table('products')
            ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
            ->join('category','category.id','=','products.category_id')
            ->join('brand','brand.id','=','products.brand_id')
            ->where('products.feature_product','=',1)
            ->get();
            
            $offer_products=  DB::table('products')
            ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
            ->join('category','category.id','=','products.category_id')
            ->join('brand','brand.id','=','products.brand_id')
         
            ->get();

            
            $latestResult=  DB::table('products')
            ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
            ->join('category','category.id','=','products.category_id')
            ->join('brand','brand.id','=','products.brand_id')
            ->orderBy('id', 'DESC')->take('5')->get();

            $othersData= json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
            $socialData= json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
            $catResults= json_decode(CategoryModel::all());
            return View('Shop',[
            'results'=>$results,
            'feature_products'=>$feature_products,
            'catResults'=>$catResults,
            'offer_products'=>$offer_products,
            'latestResult'=>$latestResult,
            'othersData'=>$othersData,
            'socialData'=>$socialData
            
            ]);
        }
    
}
