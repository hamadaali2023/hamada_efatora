<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Category;
// use Gate;
use App\Product;
use App\ProductImage;
use App\Size;
use App\Color;		
class ProductController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        // $edit = Product::findOrFail(33);
        // $ggg=json_decode($edit->size);
        // dd($ggg);

        $products=Product::all();
        foreach ($products as $item) {
            $item->images= ProductImage::where('productId',$item->id)->get();
        }
        $categories=Category::all();
        return view('admin.vendors.products.all',compact('products','categories'));
    }
    public function create()
    {
        
        $categories=Category::all();
        return view('vendors.products.create',compact('categories'));
    }
    

    public function store(Request $request)
    {
        $size=json_encode($request->size);
        $color=json_encode($request->color);

        $add = new Product;
        $add->categoryId    = $request->categoryId;
        $add->name    = ['ar' => $request->name_ar,'en' => $request->name_en];
        $add->description    = ['ar' => $request->description_ar,'en' => $request->description_en];
        $add->price    = $request->price;
        $add->quantity    = $request->quantity;
        $add->modal_number    = $request->modal_number;
        $add->size    = $size;
        $add->color    = $color;
        $add->slug    =['ar' => $request->name_ar,'en' => $request->name_en];
        $add->save();

        // $input = $request->all();
  
        // Product::create($input);



        // dd($add);
    	if($filess = $request->file('imagee'))
        {
            $length_file = count($filess);
            if($length_file > 0)
            {
                for($i=0; $i<$length_file; $i++)
                {
                	$file_extension = $filess[$i] -> getClientOriginalExtension();
                	$file_name = time().rand(1,100).'.'.$file_extension;
                	$filess[$i]->move('img/product/', $file_name);   

                    $add_image= new ProductImage;
                    $add_image->productId    =  $add->id;
                    $add_image->image  = $file_name;             
                    // $add_image->title    =  $request->title[$i];       
                    $add_image->save();
                }
            }
              // dd('ffffvvvv');
        }

        // if($request->size)
        // {
        //     $length_file = count($request->size);
        //     if($length_file > 0)
        //     {
        //         for($i=0; $i<$length_file; $i++)
        //         {   
        //             $add_image= new Size;
        //             $add_image->productId    =  $add->id;
        //             $add_image->size  = $request->size[$i];             
        //             $add_image->save();
        //         }
        //     }
        //       // dd('ffffvvvv');
        // }
        // if($request->color)
        // {
        //     $length_color = count($request->color);
        //     if($length_file > 0)
        //     {
        //         for($i=0; $i<$length_file; $i++)
        //         {   
        //             $add_image= new Color;
        //             $add_image->productId    =  $add->id;
        //             $add_image->name  = $request->color[$i];             
        //             $add_image->save();
        //         }
        //     }
        //       // dd('ffffvvvv');
        // }
        return redirect()->route('products.index')->with("message", 'تم الإضافة بنجاح');
    }

    
    public function edit(Product $product)
    {
        $categories=Category::all();
        return view('vendors.products.edit',compact('product','categories'));
    }

   

    public function update(Request $request,Product $product)
    {   
        $edit = Product::findOrFail($product->id);
        $edit->name    = ['ar' => $request->name_ar,'en' => $request->name_en];
        $edit->description    = ['ar' => $request->description_ar,'en' => $request->description_en];
        $edit->price    = $request->price;
        $edit->quantity    = $request->quantity;
        $edit->modal_number    = $request->modal_number;
        $edit->slug    = ['ar' => $request->name_ar,'en' => $request->name_en];
        $edit->save();

        
    	if($file=$request->file('imagee'))
         {
            $file_extension = $request -> file('imagee') -> getClientOriginalExtension();
            $file_name = time().'.'.$file_extension;
            $file_nameone = $file_name;
            $path = 'img/product/';
            $request-> file('imagee') ->move($path,$file_name);
            $edit->image  =$file_nameone;
        }else{
            $edit->image  = $edit->image; 
        }
        return back()->with("message", 'تم التعديل بنجاح'); 
    }

    public function destroy(Request $request )
    {
        
            $delete = Product::findOrFail($request->id);
            $delete->delete();
            // dd($request->id);
            return back()->with("success",'تم الحذف بنجاح'); 
              
    } 

    public function productSizeEdit($product)
    {
        $sizes=Size::where('productId',product);
        return view('vendors.products.size',compact('product','sizes'));
    }

   

    public function productSizeUpdate(Request $request)
    {   
        $edit = Size::findOrFail($request->id);
       
        $edit->title    = $request->title;
        $edit->description  = $request->description;
        
        $edit->price    = $request->price;
        $edit->quantity    = $request->quantity;
        $edit->slug    = $request->title;
        $edit->save();

        if($filess = $request->file('imagee'))
        {
            $length_file = count($filess);
            if($length_file > 0)
            {
                for($i=0; $i<$length_file; $i++)
                {
                    $file_extension = $filess[$i] -> getClientOriginalExtension();
                    $file_name = time().rand(1,100).'.'.$file_extension;
                    $filess[$i]->move('assets_admin/products/', $file_name);   

                    $add_image= new Image;
                    $add_image->productId    =  $edit->id;
                    $add_image->url  = $file_name;             
                    // $add_image->title    =  $request->title[$i];       
                    $add_image->save();
                }
            }
        }else{

        }
        return back()->with("message", 'تم التعديل بنجاح'); 
    }

}
