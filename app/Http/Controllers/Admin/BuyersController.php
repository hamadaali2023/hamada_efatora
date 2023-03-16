<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\VendorBuyer;
use Illuminate\Http\Request;

class BuyersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        // dd('yjyt');
        $buyers=VendorBuyer::where('type','buyer')->get();
        return view('admin.buyers.all',compact('buyers'));
    }

    
    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
        //
    }

    
    public function show(Instructor $instructor)
    {
        //
    }

    
    public function edit(Instructor $instructor)
    {
        //
    }

    
    public function update(Request $request, Instructor $instructor)
    {
        //
    }

    
    public function destroy(Instructor $instructor)
    {
        $delete = VendorBuyer::findOrFail($request->id);
        $delete->delete();
        return back()->with("message",'تم الحذف بنجاح'); 
     }
}
