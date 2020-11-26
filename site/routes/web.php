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
Route::get('/shop', 'ShopController@ShopIndex')->name('shop');
Route::get('/shop/{slug}/{id}', 'singleProductController@SingleProductIndex')->name('product.view');
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



//order list

Route::get('/wholeSalesviewPage', 'wholeSalesviewPageController@Index');
Route::post('/contactSend', 'wholeSalesviewPageController@contactSend');




//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

//Route cache:
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});

//Clear Route cache:
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});


//Clear Config cache:
Route::get('/Storage-link', function() {
    $exitCode = Artisan::call('storage:link');
    return '<h1>Storage Link Created</h1>';
});




//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

//Route cache:
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});

//Clear Route cache:
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});


//Clear Config cache:
Route::get('/storage-link', function() {
    $exitCode = Artisan::call('storage:link');
    return '<h1>Storage Link Created</h1>';
});




//Clear Config cache:
Route::get('/controller', function() {
    $exitCode = Artisan::call('make:controller wholeSalesviewPageController');
    return '<h1>controller Link Created</h1>';
});
















