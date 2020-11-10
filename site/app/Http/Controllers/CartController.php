<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductModel;
use App\CartModel;

class CartController extends Controller
{
    //

    public function CartAdd(Request $req)
    {

        $pid =  $req->input('pid');
        $quantity =  $req->input('quantity');
        // return   $quantity;
        $session_id = session('_token');
        $result = ProductModel::where('id', '=', $pid)->get();
        if ($result) {
            $p_name = $result[0]->title;
            $p_price = $result[0]->price;
            $p_image = $result[0]->images;
            $p_quantity = $result[0]->quantity;
            if ($quantity > $p_quantity) {
                return "Product quantity limitation";
            } else {


                $total_price = $p_price *  $quantity;

                $cart_info = CartModel::where('product_id', '=', $pid)->get()->count();

                if ($cart_info > 0) {
                    // return $cart_info;
                    $cart_product = CartModel::where('product_id', '=', $pid)->get();
                    $product_id = $cart_product[0]->product_id;
                   
                    if ($product_id == $pid) {
                        $update_quantity = $quantity + intval($cart_product[0]->quantity);
                        $update_price = $update_quantity * $p_price;
                        $cart_update = CartModel::where('product_id', '=', $pid)->update(['price' => $update_price, 'quantity' => $update_quantity]);
                        if ($cart_update == true) {
                            return 1;
                        } else {
                            return 0;
                        }
                    }
                } else {
                    // return "insert";
                    $result = CartModel::insert([
                        'session_id' => $session_id,
                        'product_id' => $pid,
                        'productName' => $p_name,
                        'price' => $total_price,
                        'quantity' => $quantity,
                        'image' => $p_image,
                    ]);
                    if ($result == true) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            }
        }
    }

    public function CartInfo(){
        $session_id = session('_token');
        $cart_info = CartModel::where('session_id', '=', $session_id)->get();
        $cart_detaills = array(
            'totalPrice' => null,
            'totaltQuantity' => null,
            'total_product' => null
        );
        // return $cart_info;
        if (count($cart_info) > 0) {
            $price = 0;
            $totalquantity = 0;
            foreach ($cart_info as $cart) {
                $totalprice = $price + $cart->price;
                $totalquantity = $totalquantity + $cart->quantity;
            }
            $total_product = count($cart_info);

            $cart_detaills = [
                'totalPrice' => $totalprice,
                'totaltQuantity' => $totalquantity,
                'total_product' => $total_product
            ];

             return $cart_detaills;
        }

    }
}
