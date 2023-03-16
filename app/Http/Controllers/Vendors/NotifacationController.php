<?php

namespace App\Http\Controllers\Vendors;
use App\Http\Controllers\Controller;
use App\Instructor;
use App\Course;
use App\Courses_joined;
use Illuminate\Http\Request;
use Auth;
use App\Live;
use DB;
class NotifacationController extends Controller
{
    
    public function instructornotifaction()
    {
        $instructors= Instructor::where('type','instructor')->get();
        $userid = Auth::guard('instructors')->user();
        $courses=Course::where('userId',$userid->id)->get();
        $lives=Live::where('userId',$userid->id)->get();
        return view('instructor.notifactions.notifaction',compact('instructors','courses','lives'));
    }

    public function getcoursesStudent($id){
        $student=[];
        $courses_joined=Courses_joined::where('courseId',$id)->get();
        foreach ($courses_joined as $item) {
            $student[]= Instructor::where('id',$item->userId)->first();
        }
        echo json_encode($student);
        // echo json_encode(DB::table('instructors')->where('type','student')->get());
        // echo json_encode(DB::table('instructors')->get());
    }

    public function getliveStudent($id){
        // $student=[];
        $lives_joined=Courses_joined::where('liveId',$id)->get();
        foreach ($lives_joined as $item) {
            $student[]= Instructor::where('id',$item->userId)->first();
            // echo json_encode(Instructor::where('id',$item->userId)->first());
        }
        // dd($student);
         echo json_encode($student);
    }

    // public function getbookbycategory(Request $request){
        
    //     if($request->ajax()) {
    //         if($request->categoryId==0){
    //             $data =Story::all();
    //         }else{
    //             $data = Story::where('categoryId', $request->categoryId)->get();
    //         }
    //         foreach ($data as $item) {            
    //             $item->instructor= Instructor::where('id',$item->userId)->first();
    //             $item->country= Country::where('id',$item->countryId)->first();
    //             $item->category= Category::where('id',$item->categoryId)->first();
    //             $item->subcategory= SubCategory::where('id',$item->subCategoryId)->first();
    //         }
    //         return $data;
    //     }
    // }

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
