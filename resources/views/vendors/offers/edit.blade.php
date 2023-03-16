
@extends('layout.instructor.main')
@section('content')	

@toastr_css

  <div class="content-header row">
                    <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
                      <h3 class="content-header-title mb-0 d-inline-block">إضافة كورس جديد</h3><br>
                      <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-6">
                          <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a>
                            </li>
                            
                            <li class="breadcrumb-item active">الكورسات
                            </li>
                          </ol> 
                        </div>
                        @if(session()->has('message'))
	                        @include('admin.includes.alerts.success')
	                    @endif

                      </div>
                    </div>
                   
    </div>


<section id="basic-form-layouts">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title" id="bordered-layout-basic-form"> </h4>
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
                <div class="card-content collpase show">
                  <div class="card-body">
                   <form action="{{route('offers.store')}}" method="POST" name="le_form"  enctype="multipart/form-data">
                        @csrf
						<div class="row form-row">
							<input type="hidden" name="productId" value="{{$offer->id}}">
								<div class="col-md-4 col-sm-6">
									<div class="form-group">
										<label>السعر الجديد</label>
										<input type="text" name="price" class="form-control" value="{{$offer->price}}">
										</div>
									</div>
									<div class="col-md-4 col-sm-6">
										<div class="form-group">
											<label>من تاريخ </label>
											<input type="date" name="form_date" class="form-control" value="{{$offer->form_date}}">
										</div>
									</div>
									<div class="col-md-4 col-sm-6">
										<div class="form-group">
											<label>إلى تاريخ</label>
											<input type="date" name="to_date" class="form-control" value="{{$offer->to_date}}">
										</div>
									</div>
									<div class="col-md-4 col-sm-6">
										<div class="form-group">
											<img class="avatar-img" src="{{asset('img/offers/'.$offer->image) }}" alt="offers">
											<label>صورة العرض</label>
											<input type="file"  name="image" class="form-control" value="{{old('image')}}">
										</div>
									</div>
									
									
								</div>
								<button type="submit" class="btn btn-primary btn-block">حفظ </button>
							</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </section>
    @toastr_js
    @toastr_render
@endsection