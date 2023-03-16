<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\VendorBuyer;
use Illuminate\Http\Request;

class VendorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        // dd('yjyt');
        $vendors=VendorBuyer::where('type','vendor')->get();
        return view('admin.vendors.all',compact('vendors'));
    }

    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {

        $this->validate( $request,[          
                'name'=> 'required',
                'email'     => 'required|unique:vendors_buyers',
                'password'     => 'required',
                'confirm_password' => 'required|same:password',
                'photo' => 'required', 
            ],
            [
                'name.required'=>' الاسم الأول مطلوب',
                'email.required'=>' البريد الإلكتروني مطلوب ',
                'email.unique'=>' البريد الإلكتروني موجود بالفعل ',
                'password.required'=>' كلمة المرور مطلوبة ',
                'confirm_password.required'=>' يرجى إعادة كلمة المرور ',
                'photo.required'=>' يرجي إختيار صورة jpeg,jpg,png,gif ',
            ]
        );

        $file_extension = $request -> file('photo')->getClientOriginalExtension();
        $file_name = time().'.'.$file_extension;
        $file_nameone = $file_name;
        $path = 'img/profiles';
        $request-> file('photo') ->move($path,$file_name);

        $add = new VendorBuyer;
        // $add->name    = $request->name;

        $add->name = $request->name;    
        $add->email = $request->email;   
        $add->password =  bcrypt($request->password); 
        $add->mobile = $request->mobile; 

        $add->photo = $file_nameone;
        $add->type = 'vendor';
        
        $add->save();
         // dd('yukyuk');

 
        return redirect()->back()->with("message", 'تم الإضافة بنجاح'); 
    }

    
    public function show(Instructor $instructor)
    {
        //
    }

    
    public function edit(Category $category)
    {
        return view('admin.categories.edit',compact('category'));
    }

    public function update(Request $request)
    {
        
        //  
        //  $this->validate( $request,[          
        //         'name'=> 'required',
        //         'email'     => 'required|unique:vendors_buyers',
        //         'password'     => 'required',
        //         'confirm_password' => 'required|same:password',
        //         'photo' => 'required', 
        //     ],
        //     [
        //         'name.required'=>' الاسم الأول مطلوب',
        //         'email.required'=>' البريد الإلكتروني مطلوب ',
        //         'email.unique'=>' البريد الإلكتروني موجود بالفعل ',
        //         'password.required'=>' كلمة المرور مطلوبة ',
        //         'confirm_password.required'=>' يرجى إعادة كلمة المرور ',
        //         'photo.required'=>' يرجي إختيار صورة jpeg,jpg,png,gif ',
        //     ]
        // );
        $edit = VendorBuyer::findOrFail($request->id);
        // $file_extension = $request -> file('photo')->getClientOriginalExtension();
        // $file_name = time().'.'.$file_extension;
        // $file_nameone = $file_name;
        // $path = 'img/profiles';
        // $request-> file('photo') ->move($path,$file_name);

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
        
        // $edit->email = $request->email;   
        // $edit->password =  bcrypt($request->password); 
        // if(isset($request->mobile)){
        //     $edit->mobile  = $request->mobile; 
        // }else{
        //     $edit->mobile  = $edit->mobile; 
        // } 
        
        $edit->save();
        return redirect()->route('sellers.index')->with("message", 'تم التعديل بنجاح'); 
    }

    
    
    public function destroy(Request $request)
    {
        $delete = VendorBuyer::findOrFail($request->id);
        $delete->delete();
        return back()->with("message",'تم الحذف بنجاح'); 
     }
}
