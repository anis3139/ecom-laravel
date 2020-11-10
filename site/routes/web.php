<?php

use App\Http\Controllers\SiteController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Client Route
Route::get('/', 'HomeController@HomeIndex');
Route::get('/shop', 'ShopController@ShopIndex');
Route::get('/shop/{slug}', 'singleProductController@SingleProductIndex')->name('product.view');
Route::get('/contact', 'ContactController@contactIndex');
Route::get('/about', 'AboutController@aboutIndex');




// userlogin Route
Route::get('/login', 'UserLoginController@LoginIndex');
Route::post('/onLogin', 'UserLoginController@onLogin');
Route::get('/logout', 'UserLoginController@onLogout')->middleware('userLoginCheck');





//createUser Route
Route::get('/register', 'CreateUserController@createUserIndex');
Route::post('/onCreateUser', 'CreateUserController@OnCreateUser');


//cart

Route::post('/cartproduct', 'CartController@CartAdd');
Route::get('/cartInfo', 'CartController@CartInfo');


//cartlist
Route::get('/cartlist', 'CartListController@Index')->name('cart.list');





//checkout route

Route::get('/checkout', 'CheckoutController@Index')->middleware('userLoginCheck');

Route::post('stripe-payment', 'CheckoutController@handlePost')->name('checkout.credit-card');





//order list

Route::get('/orderlist', 'OrderController@Index')->middleware('userLoginCheck');