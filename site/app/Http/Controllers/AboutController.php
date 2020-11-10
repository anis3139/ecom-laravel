<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OthersModel;
use App\SocialModel;
class AboutController extends Controller
{
    public function aboutIndex(){
        $othersData= json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData= json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
        return view('About',[
            'othersData'=>$othersData,
            'socialData'=>$socialData
        ]);
    }
}
