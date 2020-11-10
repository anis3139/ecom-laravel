<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\productImage;
use App\product;

class ProductController extends Controller
{
    public function AddProduct(Request $req) {


        

        $data = json_decode($_POST['data']);
        $photoPath =  $req->file('files');
        $ab=array();
        $ab=[
            'data'=>$data,
            'file'=>$photoPath
        ];
        return $ab;




        // $title = $data['0']->title;
        // $description = $data['0']->description;
        // $slug = $data['0']->slug;
        // $quantity = $data['0']->quantity;
        // $price = $data['0']->price;
        // $offer_price = $data['0']->offer_price;
        // $status = $data['0']->status;
     
        // $photoPath =  $req->file('photo')->store('public');
        // $photoName = (explode('/', $photoPath))[1];
        // $host = $_SERVER['HTTP_HOST'];
        // $location = "http://" . $host . "/storage/" . $photoName;
        // $result = product::insert([
        //     'title' => $title,
        //     // 'image' => $location,
        //     'description' => $description,
        //     'slug' => $slug,
        //     'quantity' => $quantity,
        //     'price' => $price,
        //     'offer_price' => $offer_price,
        //     'status' => $status,
        // ]);
        // if ($result == true) {
        //     return 1;
        // } else {
        //     return 0;
        // }
    }
}
