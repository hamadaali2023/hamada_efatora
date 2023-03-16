<?php

namespace App\Http\Controllers\Vendors;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use DB;

use App\VendorBuyer;
use App\Order;
use App\Product;
use App\Order_Vendor_Product;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware(Auth::guard('vendorsbuyers')->user());
        // $this->middleware('permission:specialities', ['only' => ['index']]);
        // $this->middleware('permission:اضافة صلاحية', ['only' => ['create','store']]);
        // $this->middleware('permission:تعديل صلاحية', ['only' => ['edit','update']]);
        // $this->middleware('permission:حذف صلاحية', ['only' => ['destroy']]);
    }
    public function index()
    {
        $user = Auth::guard('vendorsbuyers')->user();
        $orders=[];
        $order_vendor_product = Order_Vendor_Product::where('vendor_buyer_id',$user->id)->get(); 
        foreach ($order_vendor_product as $item) {
            $order= Order::where('id',$item->order_id)->first(); 
            if(!in_array($order, $orders))
            {
                array_push($orders,$order);
            }else{}
        }

        foreach ($orders as $_item) {
            $_item->buyer = VendorBuyer::where('id',$_item->buyerId)->first();
            // $order_vendor_product = Order_Vendor_Product::where('order_id',$_item->id)->where('vendor_buyer_id',1)->get();
            // foreach ($order_vendor_product as $vendor_product) {
            //     $product = Product::where('id',$vendor_product->order_productId)->first();
            //     $vendor_product->product=$product;
            //     $vendor = VendorBuyer::where('id',$vendor_product->vendor_buyer_id)->first();
            //     $vendor_product->vendor=$vendor;
            // }   
            // $_item->order_vendor_product=$order_vendor_product;

        }

        
        // dd($orders);
        return view('vendors.orders.all',compact('orders'));
    }
    
    public function orderDetails($id)
    {
        $user = Auth::guard('vendorsbuyers')->user();
        $order= Order::findOrFail($id); 
        $buyer = VendorBuyer::where('id',$order->buyerId)->first();
        $order_vendor_product = Order_Vendor_Product::where('order_id',$order->id)->where('vendor_buyer_id',$user->id)->get();
        $total=0;
        foreach ($order_vendor_product as $vendor_product) {
            $product = Product::where('id',$vendor_product->order_productId)->first();
            $vendor_product->product=$product;
            $total += $vendor_product->price * $vendor_product->quantity;
            // $vendor = VendorBuyer::where('id',$vendor_product->vendor_buyer_id)->first();
            // $vendor_product->vendor=$vendor;
        }   
        // dd($total);
        return  View('vendors.orders.details',compact('user','order','buyer','order_vendor_product','total'));
    }

    
    public function orderStatus(Request $request)
    {
        $orderstatus = Order::where('id',$request->orderId)->first();
        // dd($orderstatus);
        if($orderstatus){
            
                $orderstatus->status  = $request->status;
                $orderstatus->notes  = $request->notes;
                $orderstatus->save();
                
                // $user = VendorBuyer::where('id',$orderstatus->buyerId)->first();
                // $message='تم تغيير حالة الطلب';
            
                // $SERVER_API_KEY = 'AAAANUHRjig:APA91bGEAkL6BBKKExDAVq1ui7SLRqTaJydR_jIRVs6XaQWVhyUBy_PiQRA0gkIWtHrhgcltItbf9_I2LZP2MgCwmfSVfump7r3J1u-vyEoUdI_kF6pSk5U3iKW7HrHYOYvBtfifYidR';
                // $token_1 = $user->device_token;
                // // dd($token_1); 
                // $message = $message;
                
                // $data = [
                //     "registration_ids" => [
                //         $token_1
                //     ],
                //     "notification" => [
                //         "title" => 'كارتونا',
                //         "body" =>  $message,
                //         "sound"=> "default" // required for sound on ios
                //     ],
                // ];

                // $dataString = json_encode($data);
                // $headers = [
                //     'Authorization: key=' . $SERVER_API_KEY,
                //     'Content-Type: application/json',
                // ];
                // $ch = curl_init();
                // curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                // curl_setopt($ch, CURLOPT_POST, true);
                // curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                // curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                // curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
                // $response = curl_exec($ch);
                // dd($response);    
          
                return back()->with("message",' تم تغيير حالة الطلب ');
               
        }
    }  
    public function show(Order $order)
    {
        //
    }

    
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
