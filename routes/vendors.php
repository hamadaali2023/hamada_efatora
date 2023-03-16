<?php

use Illuminate\Support\Facades\Route;
use Carbon\Carbon;

// هن اللوجن مش شغاله عشان ملف الروت الجديد لا يعم مع اللوجن


		// Route::get('departments/{id}/edit', 'DocumentController@edit');
		// Route::get('departments', 'DocumentController@update');
		Route::get('files/create', 'DocumentController@create');
		Route::post('files', 'DocumentController@store');
		Route::get('files', 'DocumentController@index');

		Route::post('files/{id}', 'DocumentController@show');
		Route::post('file/download/{file}', 'DocumentController@download');


// Route::get('/prooooo', function () {
//     return "iuhiuhhkj";
// });
Route::get('prooooo', 'Vendors\ProductController@index');


// start livewire route

// Route::view('booksss','livewire.index');

// end livewire route


 ###################### user-status ##############################
        // Route::post('users/status/{id}', 'UsersController@updateStatus')->name('users/status/{id}');

        ###################### admin-profile ##############################
       
Auth::routes();



Route::get('user-login', 'Auth\UserLoginController@UserLogin')->name('user-login');
Route::get('/', 'Auth\UserLoginController@UserLogin')->name('user-login');
Route::post('userlogin', 'Auth\UserLoginController@LoginUser')->name('userlogin');




  Route::post('signoutinstructors', 'Auth\UserLoginController@signOutInstructors')->name('signoutinstructors');

  
  Route::get('create/acount', 'Auth\RegisterController@registerUser')->name('create.acount');
  Route::post('create/acount', 'Auth\RegisterController@registerNewUser')->name('create.acount');

  Route::get('forgot/password', 'Auth\UserLoginController@forgotPassword');
  Route::post('forgot/password', 'Auth\UserLoginController@submitForgot')->name('forgot.password.post');

  Route::get('reset-user-password/{token}', 'Auth\UserLoginController@resetUserPasswordGet')->name('reset-user-password');
  Route::post('reset-user-password', 'Auth\UserLoginController@resetUserPasswordPost')->name('reset-user-password.post');

Route::group(['middleware' => 'checkInstructor','namespace' => 'Vendors','prefix' => 'vendors'], function () {

    
    // Route::get('login/user', 'Auth\UserLoginController@UserLogin')->name('login.user');

    Route::get('instructornotifaction', 'NotifacationController@instructornotifaction')->name('instructornotifaction');
    Route::post('instructor_notifaction', 'NotifacationController@send_notifaction')->name('instructor_notifaction');
    Route::get('getcoursesstudent/{id}', 'NotifacationController@getcoursesStudent');
    Route::get('getlivestudent/{id}', 'NotifacationController@getliveStudent');

	  Route::get('getSubCategory/{id}','BookController@getSubCategory');
  	Route::get('getchildcategory/{id}','BookController@getChildCategory');

    
    Route::resource('orders','OrderController');
    Route::get('order-details/{id}','OrderController@orderDetails')->name('order-details');
    
    Route::post('vendor-order-status', 'OrderController@orderStatus')->name('vendor-order-status');
    Route::resource('shops','ShopController');
    Route::resource('products','ProductController');
    Route::resource('offers','OfferController');
    Route::get('alloffers/{id}','OfferController@alloffers');
    Route::get('addoffers/{id}','OfferController@addoffers');


    // Route::get('product-size-edit/{id}','ProductController@productSizeEdit');
    // Route::get('product-size-update/{id}','ProductController@productSizeUpdate');

    // Route::get('product-color-edit/{id}','ProductController@productColorEdit');
    // Route::get('product-color-update/{id}','ProductController@productColorUpdate');


    Route::resource('dashboard','DashBoardController');


    // Route::middleware(['checkInstructor'])->group(function(){

        // Route::resource('stories','BookController');
    // });

    // Route::resource('straights','LiveCourseController');    
    // Route::resource('straights','LiveCourseController');
    // Route::resource('courses','CourseController');
    // Route::resource('chapters','ChapterController');
    // Route::resource('videos','VideoController');
    // Route::resource('sessions','SessionssController');
    // Route::get('getchapter/{id}','BookController@getchapter');


    Route::get('report/sales','ReportController@sales');
    Route::get('report/transfers','ReportController@transfers');
    Route::get('report/statistics','ReportController@statistics');
   	Route::get('getbook/{id}', 'BookController@getbook');

    Route::get('profile', 'ProfileController@index');
    Route::get('bankdetails', 'ProfileController@bankDetails');
    Route::post('bankdetails','ProfileController@updateBankDetails')->name('bankdetails');
   	Route::get('getcity/{id}', 'ProfileController@getCity');

    Route::post('profile/update','ProfileController@updateProfile');
    Route::post('user/changepassword', 'ProfileController@changePassword')->name('user.changepassword');
	Route::get('agreements', 'ProfileController@agreements')->name('agreements');	    	
});	


