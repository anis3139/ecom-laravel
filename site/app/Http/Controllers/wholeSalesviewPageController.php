<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OthersModel;
use App\SocialModel;
use App\ContactModel;

class wholeSalesviewPageController extends Controller
{
    public function index(){
        
        $othersData = json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData = json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
        
         return view('WholeSalesViewPage',[
              'othersData' => $othersData,
            'socialData' => $socialData
             ]);
    }
  
  
    function ContactSend(Request $request){
        $name=$request->input('name');
        $email=$request->input('email');
        $PhonNumber=$request->input('PhonNumber');
        $massage=$request->input('massage');


        $data= new contactModel();
        $data->name=$name;
        $data->email=$email;
        $data->mobile=$PhonNumber;
        $data->msg=$massage;
        $result=$data->save();


        if($result==true){
            return 1;
        }else{
            return 0;
        }
    }



}
