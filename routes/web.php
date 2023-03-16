<?php

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

Route::get('/privacy', function () {
    return view('front/privacy');
});



// Route::get('said/{lang}', function ($lang) {
//     App::setlocale($lang);
//             session()->put('locale', $lang);

//     return view('welcome');
// });
// Route::get('said', function () {
//     return view('welcome');
// });


// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

// Route::group(['middleware' => ['auth']], function() {
//  Route::resource('roles','RoleController');
//  Route::resource('users','Admin\UserController');
//  Route::resource('products','ProductController');
// });

 
  // for loai
  // Route::get('instructorlogin', 'Auth\InstructorLoginController@UserLogin')->name('instructorlogin');
  // Route::post('instructor_login', 'Auth\InstructorLoginController@LoginUser');
  // Route::post('signout_instructors', 'Auth\InstructorLoginController@signOutInstructors')->name('signout_instructors');




Route::get('/activation/users/{token}', 'Auth\RegisterController@instructorActivation');

// Route::get('user-login', 'Auth\UserLoginController@UserLogin')->name('user-login');
// Route::post('userlogin', 'Auth\UserLoginController@LoginUser')->name('userlogin');




//   // Route::post('signoutotudent', 'Auth\UserLoginController@signOutStudent')->name('signoutotudent');
//   Route::post('signoutinstructors', 'Auth\UserLoginController@signOutInstructors')->name('signoutinstructors');

  
//   Route::get('create/acount', 'Auth\RegisterController@registerUser')->name('create.acount');
//   Route::post('create/acount', 'Auth\RegisterController@registerNewUser')->name('create.acount');

//   Route::get('forgot/password', 'Auth\UserLoginController@forgotPassword');
//   Route::post('forgot/password', 'Auth\UserLoginController@submitForgot')->name('forgot.password.post');

//   Route::get('reset-user-password/{token}', 'Auth\UserLoginController@resetUserPasswordGet')->name('reset-user-password');
//   Route::post('reset-user-password', 'Auth\UserLoginController@resetUserPasswordPost')->name('reset-user-password.post');

  

  
  // Route::get('/home', 'FrontKutuphanahController@index')->name('home');

  // Route::get('/', 'FrontKutuphanahController@index');
  // Route::get('category/{id}', 'FrontKutuphanahController@categoryId');
  // Route::get('subcategory/{id}', 'FrontKutuphanahController@subcategoryId');
  // Route::get('childcategory/{id}', 'FrontKutuphanahController@childcategoryId');
  // Route::get('searchcourse', 'FrontKutuphanahController@searchcourse');

  // Route::get('getcounrty/{id}', 'Auth\RegisterController@getCountry');

  // Route::get('getcoursesbycategory', 'FrontKutuphanahController@getcoursesbycategory')->name('getcoursesbycategory');

  // Route::get('searchbook', 'FrontKutuphanahController@searching')->name('searchbook');

  // Route::get('cart', 'CartController@index')->name('cart');
  // Route::post('cart/delete', 'CartController@destroy')->name('cart.delete');

  // Route::post('user/cart', 'CartController@addtocart')->name('user.cart');

  // Route::post('user/addfavorite', 'FrontKutuphanahController@userAddFavorite')->name('user.addfavorite');


  // Route::get('courses/{slug}', 'FrontKutuphanahController@coursesDetails');

  // Route::get('become-instructor', 'FrontKutuphanahController@becomeInstructor');
  // Route::post('become-instructor-update', 'FrontKutuphanahController@updatebecomeInstructor')->name('become-instructor-update');

  
  // Route::get('my-wishlist', 'FrontKutuphanahController@mywishlist');

  // Route::get('bank-details', 'FrontKutuphanahController@bankdetails');

  // Route::post('updatebankdetails', 'FrontKutuphanahController@updateBankDetails')->name('updatebankdetails');

  // Route::get('my-profile', 'FrontKutuphanahController@myprofile');
  
  // Route::post('updateprofile', 'FrontKutuphanahController@updateProfile')->name('updateprofile');













  // Route::get('about', 'FrontKutuphanahController@about');

  // Route::get('policy', 'FrontKutuphanahController@return_policy');


  // Route::get('teslive', 'FrontKutuphanahController@teslive');

  // Route::get('search', 'FrontKutuphanahController@search');

  // Route::get('terms/conditions', 'FrontKutuphanahController@termsconditions')->name('terms.conditions');
  
  // Route::get('contact', 'FrontKutuphanahController@contact')->name('contact');
  
##### end kutpana  ######################





