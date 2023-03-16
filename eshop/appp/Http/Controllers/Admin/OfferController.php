<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Str;
use App\Category;
use App\Offer;
use App\Product;
use App\ProductImage;      
use App\Shop;
class OfferController extends Controller
{
   
    public function index()
    {
        $offers = Offer::get();
        foreach ($offers as $item) {
            $item->course= Product::where('id',$item->productId)->first();
        }
        return view('admin.vendors.offers.all',compact('offers'));
    }
    public function alloffers($id)
    {
        $offers = Offer::where('productId',$id)->get();
        foreach ($offers as $item) {
            $item->course= Product::where('id',$item->productId)->first();
        }
        return view('admin.vendors.product.offer',compact('offers','id'));
    }

    // public function addvideos($id)
    // {
    //     $product = Product::where('id',$id)->first();     
    //     return view('vendors.offers.create',compact('product'));
    // }

    
    // public function store(Request $request)
    // {
    //      $this->validate( $request,[          
    //             'price' =>'required|regex:/^\d+(\.\d{1,2})?$/',
    //             'form_date'=>'required',
    //             'to_date'=>'required',
    //             'image'=>'required',
    //         ],
    //         [
    //             'price.required'=>'يرجي ادخال السعر',
    //             'form_date.required'=>' يجب ادخال تاريخ بادية العرض ',
    //             'to_date.required'=>' يجب ادخال تاريخ نهاية العرض ',
    //             'image.required'=>' يرجي إختيار صورة أو أكثر jpeg,jpg,png,gif ',
    //         ]
    //     );
    //     // $userid = Auth::guard('vendorsbuyers')->user();
    //     $date = date('Y-m-d');
    //     $file_extension = $request -> file('image') -> getClientOriginalExtension();
    //     $file_name = time().'.'.$file_extension;
    //     $file_nameone = $file_name;
    //     $path = 'img/offers';
    //     $request-> file('image') ->move($path,$file_name);
        
         
    //     $add = new Offer;
    //     $add->productId    = $request->productId;
    //     $add->price    = $request->price;
    //     $add->form_date    = $request->form_date;
    //     $add->to_date    = $request->to_date;
    //     $add->image    = $file_nameone;
    //     $add->save();
    //     return redirect()->back()->with("message", 'تم الإضافة بنجاح'); 
    // }

    // public function edit($id)
    // {
    //     $offer = Offer::findOrFail($id);   
    //     // $courses=Course::all();  
    //     return view('vendors.offers.edit',compact('offer'));
    // }

    // public function update(Request $request, Video $video)
    // {
    //     // dd($request->name);
    //     $this->validate( $request,[          
    //             'price' =>'required|regex:/^\d+(\.\d{1,2})?$/',
    //             'form_date'=>'required',
    //             'to_date'=>'required',
    //             'image'=>'required',
    //         ],
    //         [
    //             'price.required'=>'يرجي ادخال السعر',
    //             'form_date.required'=>' يجب ادخال تاريخ بادية العرض ',
    //             'to_date.required'=>' يجب ادخال تاريخ نهاية العرض ',
    //             'image.required'=>' يرجي إختيار صورة أو أكثر jpeg,jpg,png,gif ',
    //         ]
    //     );
    //     $edit = Offer::findOrFail($video->id);
    //     if($file=$request->file('image'))
    //     {
    //         $file_extension = $request -> file('image') -> getClientOriginalExtension();
    //         $file_name = time().'.'.$file_extension;
    //         $file_nameone = $file_name;
    //         $path = 'img/offers';
    //         $request-> file('image') ->move($path,$file_name);
    //         $edit->image  = $file_nameone;
    //     }else{
    //         $edit->image  =$edit->image;
    //     }

    //     $edit->productId    = $request->productId;
    //     $edit->price    = $request->price;
    //     $edit->form_date    = $request->form_date;
    //     $edit->to_date    = $request->to_date;
        
    //     $edit->save();
    //     return back()->with("message", 'تم التعديل بنجاح'); 
    // }


    public function destroy(Request $request )
    {
        // $appointment=Doctor::where('specialityId',$request->id)->get(); 
        // if(count($appointment) == 0){
            $delete = Video::findOrFail($request->id);
            $delete->delete();
            return back()->with("message",'تم الحذف بنجاح'); 
        // }else{
        //    return redirect()->back()->with("error", 'غير مسموح حذف هذا العنصر'); 
        // }        
    } 
}
