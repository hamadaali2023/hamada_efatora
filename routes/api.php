<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['middleware' => ['api','changeLanguage'], 'namespace' => 'Api'], function () {
//   Route::group(['middleware' => ['api','changeLanguage','checkDoctor:patient-api'], 'namespace' => 'Api'], function () {
   
    // Route::group(['middleware' => ['auth:patient-api','changeLanguage'], 'namespace' => 'Api'], function () {

    
    Route::group(['prefix' => 'vendors'],function (){
        
        Route::post('remove-acount', 'HomeController@removeAcount');
                
        Route::get('vendor-date', 'HomeController@vendorDate');
        
        Route::post('vendor-update', 'HomeController@vendorUpdate');

        Route::post('login', 'HomeController@login');
        
        Route::get('categotries', 'BuyerController@categotries');
        Route::post('add-category', 'BuyerController@addCategory');
        Route::post('remove-category', 'BuyerController@removeCategory');
        
        Route::post('add-shop', 'BuyerController@addShop');
        
        
        Route::get('products', 'BuyerController@products');
        Route::post('add-product', 'BuyerController@addProduct');
        
        Route::get('clients', 'BuyerController@clients');
        Route::post('add-client', 'BuyerController@addClient');
        


        Route::post('change_password', 'HomeController@change_password');

        Route::post('forgetpassword', 'HomeController@forgetPassword');

     
    });
    
   
});    