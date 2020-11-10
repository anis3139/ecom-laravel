<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OthersModel;
use App\SocialModel;
class ContactController extends Controller
{
    public function contactIndex(){
        $othersData= json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData= json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
        return view('Contact',[
            'othersData'=>$othersData,
            'socialData'=>$socialData
        ]);
    }
}
