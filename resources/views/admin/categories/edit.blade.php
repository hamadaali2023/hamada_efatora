@extends('layout.admin_main')
@section('content')	
<!-- Page Wrapper -->
<div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-7 col-auto">
								<h3 class="page-title">تعديل العروض</h3>
								
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Dashboard</a></li>
									<li class="breadcrumb-item active"> العروض</li>
								</ul>
							</div>
							
						</div>
					</div>
					<!-- /Page Header -->
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
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
								<div class="card-body">
									
								<form  method="post" action=" {{route('categories.update',$category->id)}}" enctype="multipart/form-data">
                                 @csrf
                                @method('put')
                               
								<div class="row form-row">
									<input type="hidden" name="id" value="{{$category->id}}" >
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>التصنيف عربي </label>
											<input type="text" name="name_ar" class="form-control" value="{{$category->name}}" >
											
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>التصنيف انجليزي </label>
											<input type="text" name="name_en" class="form-control" value="{{$category->getTranslation('name','en')}}" >
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الايكون</label>
											<input type="file" name="icon"  class="form-control">
											<input type="hidden" name="url"  class="form-control" id="icon">
										</div>
									</div>
									<div class="col-12 col-sm-6 text-center" style="margin-top: 30px">
										<div class="form-check">
											<input class="form-check-input" name="top" type="checkbox" value="1"  {{  ($category->top == 1 ? ' checked' : '') }}>
											<label class="form-check-label" for="invalidCheck">الظهور في الرئيسية</label>
										</div>
									</div>
								</div>
								<br/><br/>
								<button type="submit" class="btn btn-primary btn-block">حفظ التغيير</button>
							</form>
								</div>
							</div>
						</div>			
					</div>
				</div>			
			</div>
			<!-- /Page Wrapper -->
			
			
        </div>
		<!-- /Main Wrapper -->
@endsection