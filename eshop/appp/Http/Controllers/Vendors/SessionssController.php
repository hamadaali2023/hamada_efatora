<?php

namespace App\Http\Controllers\Vendors;
use App\Http\Controllers\Controller;
use App\Video;
use App\Session;
use App\Category;
use App\SubCategory;
use App\Chapter;
use App\Straight;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Str;
use App\Course;
class SessionssController extends Controller
{
    
    // public function index()
    // {
    //     $videos=Session::all();
    //     foreach ($videos as $item) {
    //         $item->course= Course::where('id',$item->courseId)->first();
    //         $item->chapter= Chapter::where('id',$item->chapterId)->first();
    //     }
    //     return view('instructor.courses.videos.all',compact('videos'));
    // }

    public function create()
    {
        
        
        $courses=Straight::all();
        return view('instructor.livecourses.sessions.create',compact('courses'));
    }
    
    public function store(Request $request)
    {
        $this->validate( $request,[          
                'liveId'=>'required',
                'title'=>'required',
                'date'=>'required',
                'time'=>'required',
                'duration'=>'required',
                
            ],
            [
                'liveId.required'=>'يرجى اختيار الكورس',
                'title.required'=>' ادخل عنوان الجلسة ',
                'date.required'=>' ادخل تاريخ الجلسة  ',              
                'time.required'=>'ادخل وقت الجلسة',
                'duration.required'=>'ادخل مدة الجلسة',
            ]
        );
       
        // dd($request->all());
        $add = new Session;
        $add->liveId    = $request->liveId;
        $add->title    = $request->title;
        $add->date    = $request->date;
        $add->time    = $request->time;
        $add->duration    = $request->duration;
        $add->url    = $request->url;
        $add->meeting_password    = $request->meeting_password;
        $add->meeting_id    = $request->meeting_id;
       
        $add->save();
        return redirect()->back()->with("message", 'تم الإضافة بنجاح'); 
    }

    public function edit(Video $video)
    {
        $chapter=Chapter::all();  
        $courses=Course::all();  
        return view('instructor.courses.videos.edit',compact('video','courses','chapter'));
    }
     public function update(Request $request, Video $video)

    {
        // dd($request->name);
        $this->validate( $request,[          
                'courseId'=>'required',
                'chapterId'=>'required',
                'name'=>'required',

                
                
            ],
            [
                'courseId.required'=>'يرجي اختيار التخصص',
                'chapterId.required'=>' التخصص الفرعي مطلوب ',
                'name.required'=>' التخصص الفرعي مطلوي  ',
                
            ]
        );
        $edit = Video::findOrFail($video->id);
       if($file=$request->file('url'))
        {
            $file_extension = $request -> file('url') -> getClientOriginalExtension();
            $file_name = time().'.'.$file_extension;
            $file_nameone = $file_name;
            $path = 'assets_admin/img/courses';
            $request-> file('url') ->move($path,$file_name);
            $edit->url  = $file_nameone;
        }else{
            $edit->url  = "books1.jpeg";
        }

        $edit->courseId    = $request->courseId;
        $edit->chapterId    = $request->chapterId;
        $edit->name    = $request->name;
        $edit->save();
        return redirect()->route('videos.index')->with("message", 'تم التعديل بنجاح'); 
    }


    public function destroy(Request $request )
    {
        // $appointment=Doctor::where('specialityId',$request->id)->get(); 
        // if(count($appointment) == 0){
            $delete = Video::findOrFail($request->id);
            $delete->delete();
            return redirect()->route('videos.index')->with("message",'تم الحذف بنجاح'); 
        // }else{
        //    return redirect()->back()->with("error", 'غير مسموح حذف هذا العنصر'); 
        // }        
    }
   
}
