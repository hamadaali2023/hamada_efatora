@extends('layout.instructor.main')
@section('content') 
<div class="content-header row">
                    <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
                      <h3 class="content-header-title mb-0 d-inline-block">الإشعارات</h3><br>
                      <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                          <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="{{url('admin/dashboard')}}">الرئيسية</a>
                            </li>
                            
                            <li class="breadcrumb-item active">الإشعارات
                            </li>
                          </ol> 
                        </div>
                      </div>
                      @if(session()->has('message'))
                        @include('admin.includes.alerts.success')
                    @endif
                    @if ($errors->any())
                    <div class="alert alert-warning">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif   
                    </div>
        </div>
        <section id="keytable">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">الطلبة المنضمين ف الكورسات المسجلة</h4>
                  <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                  <div class="heading-elements">
                    <ul class="list-inline mb-0">
                      <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                      <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                      <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                      <li><a data-action="close"><i class="ft-x"></i></a></li>
                    </ul>
                  </div>
                </div>
               
                <div class="card-content collapse show">
                  <div class="card-body card-dashboard">
                    <div class="card-body">
                        <form class="parsley-style-1" id="selectForm2" autocomplete="off" name="selectForm2" 
                                 action="{{route('instructor_notifaction')}}" method="POST">
                            @csrf
                            <div class="row form-row">
                              <div class="col-md-4" >
                                <div class="form-group">
                                  <label for="country"> الكورس</label>
                                  <select name="countryId" id="get_courses_student_name" class="form-control">
                                    <option  disabled selected>حدد الكورس</option>  
                                    
                                    @foreach ($courses as $_item) 
                                        <option value="{{$_item->id}}">{{$_item->title}}</option>
                                    @endforeach
                                  </select>
                                </div>
                              </div>
                                
                              <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>تحديد مدرب او اكثر </label>
                                        <select name="device_token[]" class="select2 form-control" id="courses_student" multiple="multiple">
                                            <option disabled >حدد مدرب </option>
                                            <!-- @foreach ($instructors as $_item)
                                                <option value="{{$_item->device_token}}">
                                                      &nbsp; {{$_item->name  }} 
                                                </option>
                                            @endforeach -->
                                        </select>
                                    </div>
                              </div>


                                <div class="parsley-input col-md-4" >
                                    <label>رسالة التنبية </label>
                                    <input class="form-control form-control-sm mg-b-20" name="message"  required="" type="text">
                                </div>
                            </div> 

                            <br>
                            <div class="col-12 col-sm-3"><button type="submit" class="btn btn-primary btn-block">إرسال </button></div>  
                        </form>
                    </div>

                   <!--  <div class="card-body">
                         <form class="parsley-style-1" id="selectForm2" autocomplete="off" name="selectForm2" 
                                 action="{{route('instructor_notifaction')}}" method="POST">
                                @csrf                          
                                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label">تحديد مدرب او مجموعه او  الكل </label>
                                        <select name="device_token[]" multiple id="select-beast" class="form-control  nice-select  custom-select">
                                         @foreach ($instructors as $_item)
                                                            <option value="{{$_item->device_token}}">
                                                                 {{$_item->name  }}  
                                                            </option>
                                                          @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="parsley-input col-md-6" >
                                    <label>رسالة التنبية </label>
                                    <input class="form-control form-control-sm mg-b-20" name="message" required="" type="text">
                                </div>
                            </div>
                            <div class="col-12 col-sm-3">
                                <button type="submit" class="btn btn-primary btn-block">إرسال </button>
                            </div>
                            
                        </form>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
</section>



<section id="keytable">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">الطلبة المنضمين ف الكورسات المباشرة</h4>
                  <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                  <div class="heading-elements">
                    <ul class="list-inline mb-0">
                      <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                      <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                      <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                      <li><a data-action="close"><i class="ft-x"></i></a></li>
                    </ul>
                  </div>
                </div>
               
                <div class="card-content collapse show">
                  <div class="card-body card-dashboard">
                    <div class="card-body">
                        <form class="parsley-style-1" id="selectForm2" autocomplete="off" name="selectForm2" 
                                 action="{{route('instructor_notifaction')}}" method="POST">
                            @csrf
                            <div class="row form-row">
                              <div class="col-md-4" >
                                <div class="form-group">
                                  <label for="country"> الكورس</label>
                                  <select name="countryId" id="get_live_student_name" class="form-control">
                                    <option  disabled selected>حدد الكورس</option>  
                                    
                                    @foreach ($lives as $_item) 
                                        <option value="{{$_item->id}}">{{$_item->title}}</option>
                                    @endforeach
                                  </select>
                                </div>
                              </div>
                              <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>تحديد مدرب او اكثر </label>
                                        <select name="device_token[]" class="select2 form-control" id="live_student" multiple="multiple">
                                            <option disabled >حدد مدرب </option>
                                            <!-- @foreach ($instructors as $_item)
                                                <option value="{{$_item->device_token}}">
                                                      &nbsp; {{$_item->name  }} 
                                                </option>
                                            @endforeach -->
                                        </select>
                                    </div>
                                </div>


                                <div class="parsley-input col-md-4" >
                                    <label>رسالة التنبية </label>
                                    <input class="form-control form-control-sm mg-b-20" name="message"  required="" type="text">
                                </div>
                            </div> 

                            <br>
                            <div class="col-12 col-sm-3"><button type="submit" class="btn btn-primary btn-block">إرسال </button></div>  
                        </form>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
</section>
<!-- Page Wrapper -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
  $(document).ready(function () {
      $('#get_courses_student_name').on('change', function () {
          let id = $(this).val();
          $.ajax({
            type: 'GET',
            url: "{{url('instructor/getcoursesstudent')}}/"+id,
            success: function (response) {
              var response = JSON.parse(response)
              console.log(response);   
              $('#courses_student').empty();
              // $('#student').append(`<option value="0" disabled selected>Select </option>`);
              response.forEach(element => {
                console.log(element['id']);
                  $('#courses_student').append(`<option value="${element['device_token']}">
                  ${element['name']} 
                  </option>`);
              });
          }
        });
      });

      $('#get_live_student_name').on('change', function () {
          let id = $(this).val();
          $.ajax({
            type: 'GET',
            url: "{{url('instructor/getlivestudent')}}/"+id,
            success: function (response) {
              var response = JSON.parse(response)
              console.log(response);   
              $('#live_student').empty();
              // $('#student').append(`<option value="0" disabled selected>Select </option>`);
              response.forEach(element => {
                console.log(element['id']);
                  $('#live_student').append(`<option value="${element['device_token']}">
                  ${element['name']} 
                  </option>`);
              });
          }
        });
      });
  });

  </script>


@endsection

