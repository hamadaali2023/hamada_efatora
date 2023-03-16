<?php

namespace App\Http\Controllers\Vendors;
use App\Http\Controllers\Controller;
use App\VendorBuyer;
use App\Shop;
use Illuminate\Http\Request;
use Auth;

class ShopController extends Controller
{
    
    public function index()
    {
        $userid = Auth::guard('vendorsbuyers')->user();
        $shops=Shop::where('vendorId',$userid->id)->get();
        return view('vendors.shops.all',compact('shops'));
    }

    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
        $userid = Auth::guard('vendorsbuyers')->user();
        $this->validate( $request,[          
                'name'=> 'required',
                'logo'=> 'required',
            ],
            [
                'name.required'=>' الاسم الأول مطلوب',
                'logo.required'=>' الشعر مطلوب', 
            ]
        );

        $file_extension = $request -> file('logo')->getClientOriginalExtension();
        $file_name = time().'.'.$file_extension;
        $file_nameone = $file_name;
        $path = 'img/shops';
        $request-> file('logo') ->move($path,$file_name);

        $add = new Shop;
        $add->vendorId=$userid->id;
        $add->name = $request->name;    
        $add->logo = $file_nameone;
        $add->save();
        return redirect()->back()->with("message", 'تم الإضافة بنجاح'); 
    }

    
    public function show(Instructor $instructor)
    {
        //
    }

    
    public function edit(Category $category)
    {
        return view('admin.shops.edit',compact('category'));
    }

    public function update(Request $request)
    {
        $edit = Shop::findOrFail($request->id);
        if($file=$request->file('logo'))
        {
            $file_extension = $request -> file('logo')->getClientOriginalExtension();
            $file_name = time().'.'.$file_extension;
            $file_nameone = $file_name;
            $path = 'img/shops';
            $request-> file('logo') ->move($path,$file_name);
            $edit->logo  = $file_nameone;
        }else{
            $edit->logo  = $edit->logo; 
        }

        if(isset($request->name)){
            $edit->name  = $request->name; 
        }else{
            $edit->name  = $edit->name; 
        }    
        $edit->save();
        return redirect()->route('shops.index')->with("message", 'تم التعديل بنجاح'); 
    }

    
    
    public function destroy(Request $request)
    {
        $delete = Shop::findOrFail($request->id);
        $delete->delete();
        return back()->with("message",'تم الحذف بنجاح'); 
     }
}