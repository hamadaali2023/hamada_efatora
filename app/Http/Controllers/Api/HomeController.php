<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\ContactInfo;
use App\Language;
use App\SubCategory;



use App\Category;
use App\Courses_joined;
use App\Vendor;
use App\Traits\GeneralTrait;
use Illuminate\Support\Facades\DB;
use Auth;
use App\City;
use App\Country;
use App\Live;
use App\Session;
use Validator;

use Hash;
use App\Banner;
use App\Chapter;
use App\Video;
use App\Review;
use App\ChildCategory;
use Mail;
use Password;
use Illuminate\Support\Str;
use DateTime;
use Carbon\Carbon;
class HomeController extends Controller   
{  
    use GeneralTrait; 
    public function login(Request $request)
    {
         // $userid = Auth::guard('vendors-api')->user();
        // dd('vefuhivervrefre');
        try {
            $rules = [
                "email" => "required",
                "password" => "required",
                "device_token" => "required"
            ];

            $validator = Validator::make($request->all(), $rules);

            if ($validator->fails()) {
                $code = $this->returnCodeAccordingToInput($validator);
                return $this->returnValidationError($code, $validator);
            }
                
            $credentials = $request->only(['email','password']);
            $UserData = Vendor::where("email" , $request->email)->first();
            if($UserData->blocked ==0)
            {
                if(isset($request->lang)  && $request -> lang == 'en' ){
                    return $this -> returnError('Account deleted');
                }else{
                    return $this->returnError('تم حذف الحساب');
                } 
            }
            $token =  Auth::guard('vendors-api') -> attempt($credentials);
           
            if(!$token)
                return $this -> returnError('البريد الإلكتروني أو كلمة المرور خطأ');
            
            
            
                $admin = Auth::guard('vendors-api') -> user();
                $admin -> api_token = $token;
                $UserData->device_token=$request->device_token;
                $UserData->token=$token;
                $UserData->save();                    
                $buyer = Vendor::where('id',$UserData->id)->first(); 
                
                $buyer->photo= "http://findfamily.net/care/img/profiles/".$buyer->photo;
                return $this -> returnDataa(
                    'data',$buyer,'تم تسجيل الدخول بنجاح'
                );
            

        }catch (\Exception $ex){
            return $this->returnError( $ex->getMessage());
        }


    }
   
    
    public function vendorDate()
    {    
        $user = Auth::guard('vendors-api')->user();
        if(!$user)
            return $this->returnError('يجب تسجيل الدخول أولا');
            $user->photo= "http://findfamily.net/care/img/profiles/".$user->photo;
        return $this -> returnDataa(
            'data',$user,'riuhfer'
        );
    }
    
    
    
    //////////update
     public function vendorUpdate(Request $request)
    {
        $user = Auth::guard('vendors-api')->user();
        if(!$user)
            if(isset($request->lang)  && $request -> lang == 'en' ){
                return $this -> returnError('You must be sign in first');
            }else{
                return $this -> returnError('يجب تسجيل الدخول اولا');
            };
        $edit = Vendor::findOrFail($user->id);
        
        if($file=$request->file('photo'))
        {
            $file_extension = $request -> file('photo')->getClientOriginalExtension();
            $file_name = time().'.'.$file_extension;
            $file_nameone = $file_name;
            $path = 'img/profiles';
            $request-> file('photo') ->move($path,$file_name);
            $edit->photo  = $file_nameone;
        }else{
            $edit->photo  = $edit->photo; 
        }
        
        if(isset($request->name)){
            $edit->name  = $request->name; 
        }else{
            $edit->name  = $edit->name; 
        } 
        if(isset($request->mobile)){
            $edit->mobile  = $request->mobile;  
        }else{
            $edit->mobile  = $edit->mobile; 
        } 
        if(isset($request->company_mobile)){
            $edit->company_mobile  = $request->company_mobile;  
        }else{
            $edit->company_mobile  = $edit->company_mobile; 
        } 
        
        
        if(isset($request->address)){
            $edit->address  = $request->address;  
        }else{
            $edit->address  = $edit->address; 
        } 
        if(isset($request->tax_number)){
            $edit->tax_number  = $request->tax_number;  
        }else{
            $edit->tax_number  = $edit->tax_number; 
        } 
        
        $edit-> save();
            
        $buyer = Vendor::find($edit->id);
        $buyer->photo= "http://findfamily.net/care/img/profiles/".$buyer->photo;
        
        
       
        
        if(isset($request->lang)  && $request -> lang == 'en' ){
            return $this -> returnDataa('data',$buyer,'done');
        }else{
            return $this -> returnDataa('data',$buyer,'تم الحفظ');
        }  
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public function change_password(Request $request)
    {

        $user = Auth::guard('vendorsbuyers-api')->user();
         if(!$user)
            return $this->returnError('يجب تسجيل الدخول أولا');
        $input = $request->all();
        $userid = Vendor::where("id" , $user->id)->first();
        
        $rules = array(
            'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required|same:new_password',
        );
        $validator = Validator::make($input, $rules);
        if ($validator->fails()) {
            $arr = array("status" => 400, "message" => $validator->errors()->first(), "data" => array());
        } else {
            try {
                
                if ((Hash::check(request('old_password'), $userid->password)) == false) {
                    if(isset($request->lang)  && $request -> lang == 'en' ){
                        $arr = array("status" => 400, "message" => "Check your old password.", "data" => array());
                    } else {
                        $arr = array("status" => 400, "message" => "تحقق من كلمة السر القديمة.", "data" => array());
                    }     
                }else if ((Hash::check(request('new_password'), $request->password)) == true) {
                    if(isset($request->lang)  && $request -> lang == 'en' ){
                        $arr = array("status" => 400, "message" => "Please enter a password which is not similar then current password.", "data" => array());
                    } else {
                        $arr = array("status" => 400, "message" => "الرجاء إدخال كلمة مرور لا تشبه كلمة المرور الحالية.", "data" => array());
                    }   

                }else {                     
                     $userid->password  = bcrypt($input['new_password']);
                     $userid->save();
                    if(isset($request->lang)  && $request -> lang == 'en' ){
                        $arr = array("status" => 200, "message" => "Password updated successfully.", "data" => $userid);
                    } else {
                        $arr = array("status" => 200, "message" => "تم تحديث كلمة السر بنجاح.", "data" => $userid);
                    }    
                }
            } catch (\Exception $ex) {
                if (isset($ex->errorInfo[2])) {
                    $msg = $ex->errorInfo[2];
                } else {
                    $msg = $ex->getMessage();
                }
                $arr = array("status" => 400, "message" => $msg, "data" => array());
            }
        }
        return \Response::json($arr);
    }
    
    
    
    public function forgetPassword(Request $request)
    {
        
        $input = $request->all();
        $rules = array(
            'email' => "required|email",
        );
        $validator = Validator::make($input, $rules);
        
        if ($validator->fails()) {
            $arr = array("status" => 400, "message" => $validator->errors()->first(), "data" => array());
        } else {
            try {
                 $doctorss= Vendor::where('email',$request->email)->first();
                //  dd($doctorss);
                if($doctorss==null){
                    return $this -> returnError('البريد الإلكتروني غير موجود');
                }else{
                    $gene = mt_rand(1000000000, 9999999999);
                    $doctorss->password = bcrypt($gene);
                    $doctorss->save();
                    // $details = [
                    //     'title' => 'Password of Store',
                    //     'body' => 'Cope this password to enter Store: ' ." " . $gene . " "
                    // ];
                    // Mail::to($request->email)->send(new \App\Mail\SendPassword($details));
                        return $this -> returnSuccessMessage('يرجى زيارة بريدك الإلكتروني');

                }
            } catch (\Swift_TransportException $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            } catch (Exception $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            }
        }
        // return \Response::json('doneeeee');
    }
    
    public function removeAcount(Request $request)
    {
        $user = Auth::guard('vendorsbuyers-api')->user();
        if(!$user)
            if(isset($request->lang)  && $request -> lang == 'en' ){
                return $this -> returnError('You must be sign in first');
            }else{
                return $this -> returnError('يجب تسجيل الدخول اولا');
            } 
        $user_blocked = Vendor::where('id',$user->id)->first();
        $user_blocked->blocked  = 0;
        $user_blocked->save();
        if(isset($request->lang)  && $request -> lang == 'en' ){
                return $this -> returnSuccessMessage('Account deleted');
            }else{
                return $this->returnSuccessMessage('تم حذف الحساب');
            } 
        
        
    }
    

}
