<?php

use Illuminate\Support\Facades\Route;

// هن اللوجن مش شغاله عشان ملف الروت الجديد لا يعم مع اللوجن

// عند اضافه معلومات البنك

// اسم الفرع من ابنك  (اسم الرفعي اللي تم فيه فتح الحساب )
// اسم الشخص 
// سويفت كود 


// عند اضافه رقم ترخيص الكتاب 
// ف الكتب رقم الفسح

// السعر من ٢ الي ٩ ويجب ان تكون دنيماكيك

// ISBN غير اجباري


####  admin #######################

Auth::routes();
  Route::get('admin-login', 'Auth\LoginController@LoginAdmin')->name('admin-login');
	  Route::post('signoutadmins', 'Auth\UserLoginController@signOutadmins')->name('signoutadmins');

		Route::group(['middleware' => 'auth', 'namespace' => 'Admin','prefix' => 'admin',], function () {
		    Route::get('instructornotifaction', 'NotifacationController@instructornotifaction')->name('instructornotifaction');
        Route::post('instructor_notifaction', 'NotifacationController@send_notifaction')->name('instructor_notifaction');

		    Route::resource('roles','RoleController');
		    Route::resource('users','UserController');
		    Route::resource('sliders','SliderController');
		    Route::resource('students','StudentController');
		    Route::post('settings/update','ProfileController@updateSettings');
		    Route::resource('dashboard','DashBoardController');
		    Route::resource('countries','CountryController');
		    Route::resource('cities','CityController');
		    Route::resource('categories','CategoryController');
		    Route::resource('sellers','VendorController');
		    Route::resource('admin-products','ProductController');
		    Route::resource('buyers','BuyersController');


		    // Route::get('settings', 'ProfileController@settings');
		    // Route::get('about', 'ProfileController@about'); 
		    // Route::get('contact', 'ProfileController@contact');
		    // Route::get('privacy', 'ProfileController@privacy');

		Route::resource('offers','OfferController');
    	Route::get('alloffers/{id}','OfferController@alloffers');

		Route::get('settings', 'ProfileController@settings');   
		Route::post('settings/update','ProfileController@updateSettings');
        
        Route::get('contact', 'ProfileController@contact');
        Route::post('settings/contactdata','ProfileController@updateContactData');

        Route::get('privacy', 'ProfileController@privacy');
        Route::post('settings/privacy','ProfileController@updatePrivacy');
        
        Route::get('terms', 'ProfileController@terms');
        Route::post('update/terms','ProfileController@updateTerms');

        Route::get('return_policy', 'ProfileController@return_policy');
        Route::post('update/return_policy','ProfileController@updateReturn_policy');
        
        

        
		    Route::get('profile', 'ProfileController@index');
		    Route::post('profile/update','ProfileController@updateProfile');
		    Route::post('user/changepassword', 'ProfileController@changePassword')->name('user.changepassword');
		    
		    Route::get('/admin', function () {
			    return "iuhiuhhkj";
			});

			Route::group(['prefix' => 'student'],function (){
				Route::get('/users', function () {
				    return "iuhiuhhkj";
				});
			});		
		});







 ###################### user-status ##############################
        // Route::post('users/status/{id}', 'UsersController@updateStatus')->name('users/status/{id}');
        

        ###################### admin-profile ##############################
       





