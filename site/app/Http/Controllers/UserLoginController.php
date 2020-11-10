<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OthersModel;
use App\SocialModel;
use App\UserLoginModel;
use App\CartModel;

class UserLoginController extends Controller
{
    public function LoginIndex()
    {
        $othersData = json_decode(OthersModel::orderBy('id', 'desc')->get()->first());
        $socialData = json_decode(SocialModel::orderBy('id', 'desc')->get()->first());
        return view('UserLogin', [
            'othersData' => $othersData,
            'socialData' => $socialData
        ]);
    }
    function onLogout(Request $request)
    {
        $session_id = session('_token');
        CartModel::where('session_id', '=', $session_id)->delete();
        $request->session()->flush();
        return redirect('/login');
    }


    function onLogin(Request $request)
    {
        $user = $request->input('user');
        $pass = $request->input('pass');
        $countValue = UserLoginModel::where('username', '=', $user)->where('password', '=', md5($pass))->count();
        if ($countValue == 1) {
            $user = UserLoginModel::where('username', '=', $user)->where('password', '=', md5($pass))->get()->first();


            $request->session()->put('userid', $user->id);
            $request->session()->put('user', $user);

            return 1;
        } else {
            return 0;
        }
    }
}
