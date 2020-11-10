<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OthersModel;
use App\SocialModel;
use App\UserLoginModel;
class CreateUserController extends Controller

{
    public function createUserIndex(){
    
        $othersData= json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData= json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
        return view('CreateUser',[
            'othersData'=>$othersData,
            'socialData'=>$socialData
        ]);
    }

    public function OnCreateUser(Request $request){


        // $validatedData = $request->validate([
        //     'user' => 'required|unique:posts|max:255',
        //     'body' => 'required',
        // ]);


        $user = $request->input("user"); 
        $pass = $request->input("pass"); 
        $name = $request->input("name"); 
        $phone = $request->input("phone"); 
        $email = $request->input("email"); 
        $address = $request->input("address"); 
        $shippingAddress = $request->input("shippingAddress"); 
        $district = $request->input("district"); 
        $city = $request->input("city"); 
        $country = $request->input("country"); 
        $massage = $request->input("massage"); 
        $gender = $request->input("gender"); 

      


        $result = UserLoginModel::insert([
            'name' => $name,
            'password' => $pass,
            'username' => $user,
            'email' => $email,
            'phone' => $phone,
            'gender' => $gender,
            'address' => $address,
            'shipping_address' => $shippingAddress,
            'distric' => $district,
            'city' => $city,
            'country' => $country,
            'massage' => $massage,
            ]);
        
        if ($result == true) {
            return 1;
        } else {
            return 0;
        }
    }
   
}
