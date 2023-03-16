<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Instructor;

use Illuminate\Http\Request;

class NotifacationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function instructornotifaction()
    {
        $instructors= Instructor::get();
        return view('admin.notifactions.notifaction',compact('instructors'));
    }

    public function send_notifaction(Request $request)
    {
        $length = count($request->device_token);
        if($length > 0)
        {
            for($i=0; $i<$length; $i++)
            {
                $SERVER_API_KEY = 'AAAA6BAWb0E:APA91bF4aWEnePpyqYqpFNcA0C5ev_uhPhIwDXJzsDi0cq-UvaRNWH68vR3E7_-ACoQ66QK2Bucng9vETUewHn8RmyPC3MpO4I5svTqIcwuHNt8DgdOZFx1YtSEjUPpNOtLk0-hz_p15';
                $token_1 = $request->device_token[$i];
                $message = $request->message;
                $data = [
                    "registration_ids" => [
                        $token_1
                    ],
                    "notification" => [
                        "title" => 'عالم التميز',
                        "body" =>  $message,
                        "sound"=> "default" // required for sound on ios
                    ],
                ];

                $dataString = json_encode($data);
                $headers = [
                    'Authorization: key=' . $SERVER_API_KEY,
                    'Content-Type: application/json',
                ];
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
                $response = curl_exec($ch);
                    
            }                      
        }
        return redirect()->back()->with("message","تم الإرسال");       
    }

    
}
