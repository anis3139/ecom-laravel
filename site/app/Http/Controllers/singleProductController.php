<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\CategoryModel;
use App\productImage;
use App\product;
use App\OthersModel;
use App\SocialModel;
class singleProductController extends Controller
{
    public function SingleProductIndex($slug,$id){

        
 
        $singleProduct=  DB::table('products')
        ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
        ->join('category','category.id','=','products.category_id')
        ->join('brand','brand.id','=','products.brand_id')
        ->where('products.slug','=',$slug)
        ->where('products.id',$id)
        ->get();





        $reletedProduct=  DB::table('products')
        ->select('products.id','products.title','products.category_id','products.description','products.slug','products.offer','products.quantity','products.price','products.images','category.category_name','brand.brand_name')
        ->join('category','category.id','=','products.category_id')
        ->join('brand','brand.id','=','products.brand_id')
        ->where('products.slug','=',$slug)
        ->get();

        $othersData= json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData= json_decode(SocialModel::orderBy('id', 'desc')->get()->first());

        return view('SingleProduct',[
            'singleProduct'=>$singleProduct,
            'reletedProduct'=>$reletedProduct,
            'othersData'=>$othersData,
            'socialData'=>$socialData
        ]);
    }

    
}
