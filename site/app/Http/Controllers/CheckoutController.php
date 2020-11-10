<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Session;
use App\OthersModel;
use App\SocialModel;
use App\UserLoginModel;
use App\CartModel;
use App\OrderModel;
use Gloudemans\Shoppingcart\Facades\Cart;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartalyst\Stripe\Exception\CardErrorException;

class CheckoutController extends Controller
{

    public function handlePost(Request $request)
    {
        //    return $request->all();
        $session_id = session('_token');
        $cart_details = CartModel::where('session_id', '=', $session_id)->get();

        $total_products = count($cart_details) - 1;

        $logged_user_id = session('userid');
        $user_info = json_decode(UserLoginModel::where('id', '=', $logged_user_id)->get());
        $userId =  $user_info[0]->id;
        date_default_timezone_set("Asia/Dhaka");
        if ($cart_details) {
            for ($i = 0; $i <= $total_products; $i++) {


                $productId = $cart_details[$i]->product_id;
                $productName = $cart_details[$i]->productName;
                $price = $cart_details[$i]->price;
                $quantity = $cart_details[$i]->quantity;
                $image = $cart_details[$i]->image;
                

                $date =date("Y-m-d h:i:sa");
                $status = 0;


                $resultOnOrder = OrderModel::insert([
                    'session_id' => $session_id,
                    'customer_id' => $userId,
                    'product_id' => $productId,
                    'product_name' => $productName,
                    'quantity' => $quantity,
                    'price' => $price,
                    'image' => $image,
                    'date' => $date,
                    'status' => $status
                ]);
            }
            $cartDelete = CartModel::where('session_id', '=', $session_id)->delete();
            if ($cartDelete == true) {
                return 1;
            } else {
                return 0;
            }
        }

        // foreach ($cart_details as $result) {

        //     $productId = $result['product_id'];
        //     $productName = $result['productName'];
        //     $price = $result['price'];
        //     $quantity = $result['quantity'];
        //     $image = $result['image'];
        //     $date = date("Y/m/d");
        //     $status = 0;


        //     $resultOnOrder = OrderModel::insert([
        //         'session_id' => $session_id,
        //         'customer_id' => $userId,
        //         'product_id' => $productId,
        //         'product_name' => $productName,
        //         'quantity' => $quantity,
        //         'price' => $price,
        //         'image' => $image,
        //         'date' => $date,
        //         'status' => $status
        //     ]);

        //     $cartDelete = CartModel::where('session_id', '=', $session_id)->delete();

        //     if ($resultOnOrder == true) {
        //         return 1;
        //     } else {
        //         return 0;
        //     }
        // }

    }


    public function Index()
    {

        $othersData = json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData = json_decode(SocialModel::orderBy('id', 'desc')->get()->first());

        $logged_user_id = session('userid');
        $user_info = json_decode(UserLoginModel::where('id', '=', $logged_user_id)->get());


        $session_id = session('_token');
        $cart_details = CartModel::where('session_id', '=', $session_id)->get();



        $totalprice = 0;
        foreach ($cart_details as $cartprice) {
            $totalprice = $totalprice + $cartprice->price;
        }
        $total = (($totalprice * 10) / 100) + $totalprice;



        \Stripe\Stripe::setApiKey('sk_test_hXsvJhyO0M9BlHAJH9Amk55L00cVJGwKvV');

        $amount = $total;
        $amount *= 100;
        $amount = (int) $amount;

        $payment_intent = \Stripe\PaymentIntent::create([
            'description' => 'Stripe Test Payment',
            'amount' => $amount,
            'currency' => 'USD',
            'description' => json_encode($cart_details),
            'payment_method_types' => ['card'],

        ]);
        $intent = $payment_intent->client_secret;

        // return view('credit-card',compact('intent'));




        return view('checkout', [
            'othersData' => $othersData,
            'socialData' => $socialData,
            'userinfo' => $user_info,
            'cart_details' => $cart_details,
            'total_price' => $total,
            'sub_total' => $totalprice,
            'intent' => $intent
        ]);
    }
}
