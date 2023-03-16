

@extends('layout.admin_main')
@section('content')	

		<div class="content-header row">
			        <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
			          <h3 class="content-header-title mb-0 d-inline-block">البائعين</h3><br>
			          <div class="row breadcrumbs-top d-inline-block">
			            <div class="breadcrumb-wrapper col-12">
			              <ol class="breadcrumb">
			                <li class="breadcrumb-item"><a href="index.html">الرئيسية</a>
			                </li>
			                <li class="breadcrumb-item active">البائعين
			                </li>
			              </ol> 
			            </div>
			          </div>
			        </div>
			        <div class="content-header-right col-md-6 col-12">
			          <div class="dropdown float-md-right">
			               <a href="#Add_Specialities_details" data-toggle="modal" class="btn btn-primary float-right mt-2">إضافة متجر</a>
			          </div>
			        </div>
			        
			        @if (session('message'))
			            <div class="alert alert-success">
			                {{ session('message') }}
			            </div>
			        @endif

			        @if (count($errors) > 0)
			                <div class="alert alert-danger">
			                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
			                        <span aria-hidden="true">&times;</span>
			                    </button>
			                    <strong>خطا</strong>
			                    <ul>
			                        @foreach ($errors->all() as $error)
			                        <li>{{ $error }}</li>
			                        @endforeach
			                    </ul>
			                </div>
			                @endif
		</div>
		<section id="keytable">
          <div class="row">
            <div class="col-12">
              <div class="card">
               
                <div class="card-content collapse show">
                  <div class="card-body card-dashboard">
                    <div class="card-body">
									<div class="table-responsive">
		                                <table
		                                    class="table table-bordered table-striped table-hover js-basic-example dataTable">
		                                    <thead>
												<tr>													
													<th>الايكون</th>
													<th>اسم البائع</th>
													<th>رقم الهاتف</th>
													<th class="text-right">العمليات</th>
												</tr>
											</thead>
											<tbody>
												
											@foreach ($vendors as $_item)
												<tr>													
													<td class="text-center">
														<img class="avatar-img" src="{{asset('img/profiles/'.$_item->photo) }}" alt="Speciality" width="50" height="50">
													</td>
													<td class="text-center">
														{{$_item->name}}
													</td>
													<td class="text-center">
														{{$_item->mobile}}
													</td>
													<td class="text-center">
									<div class="actions">

										<a class="btn btn-sm bg-success-light edit-course" data-toggle="modal" 
															data-name ="{{ $_item->name }}" 
															data-email ="{{ $_item->email }}"
															data-mobile ="{{ $_item->mobile }}"
															data-photo ="{{ $_item->photo }}" 
															data-catid="{{ $_item->id }}" 
															data-target="#edit">
											<button type="button" class="btn btn-outline-success "><i class="la la-edit"></i></button>
                                              <span class="editcourse">تعديل المتجر</span>
										</a>

										<!-- <a href="{{route('categories.edit',$_item->id)}}" class="edit-course" >
                                              <button type="button" class="btn btn-outline-success "><i class="la la-edit"></i></button>
                                              <span class="editcourse">تعديل الكورس</span>
                                        </a> -->

                                        <a  data-toggle="modal" data-catid="{{ $_item->id }}" data-target="#delete" class="delete-course">
                                           <button type="button" class=" btn btn-outline-warning"><i class="la la-trash-o"></i></button>
                                           <span class="deletecourse">حذف الكورس</span>
                                        </a>
									</div>
													</td>
												</tr>
											@endforeach
												
											</tbody>
		                                    
		                                </table>
		                            </div>
								</div>
                  </div>
                </div>
              </div>
            </div>
          </div>




			<div class="modal fade" id="Add_Specialities_details" aria-hidden="true" role="dialog">
				<div class="modal-dialog modal-dialog-centered" role="document" >
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">أضافة تخصص</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="{{route('sellers.store')}}" method="POST" 
                                name="le_form"  enctype="multipart/form-data">
                                @csrf
								<div class="row form-row">
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>اسم المتجر</label>
											<input type="text" name="name" class="form-control" value="{{old('name')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>البريد الالكتروني </label>
											<input type="email" name="email" class="form-control" value="{{old('email')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>كلمة السر </label>
											<input type="password" name="password" class="form-control" value="{{old('password')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>إعادة كلمة السر </label>
											<input type="password" name="confirm_password" class="form-control" value="{{old('confirm_password')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>رقم الهاتف</label>
											<input type="text" name="mobile" class="form-control" value="{{old('mobile')}}">
										</div>
									</div>
									<div class="col-12 col-sm-12">
										<div class="form-group">
											<label>صورة المتجر</label>
											<input type="file"  name="photo" class="form-control" value="{{old('photo')}}">
										</div>
									</div>
									
									
								</div>
								<button type="submit" class="btn btn-primary btn-block">أضافة متجر </button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /ADD Modal -->
			
			<!-- Edit Details Modal -->
			<div class="modal fade" id="edit" aria-hidden="true" role="dialog">
				<div class="modal-dialog modal-dialog-centered" role="document" >
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">تعديل التخصص</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							 <form  method="post" action="{{route('sellers.update','test')}}" enctype="multipart/form-data">
                                @csrf
                                @method('put')
								<div class="row form-row">
									<input type="hidden" name="id" id="cat_id" >
										<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>اسم المتجر</label>
											<input type="text" name="name" class="form-control" id="nameid">
										</div>
									</div>
									<!-- <div class="col-12 col-sm-6">
										<div class="form-group">
											<label>البريد الالكتروني </label>
											<input type="email" name="email" class="form-control" id="emailid">
										</div>
									</div> -->
									<!-- <div class="col-12 col-sm-6">
										<div class="form-group">
											<label>كلمة السر </label>
											<input type="password" name="password" class="form-control" id="passwordid">
										</div>
									</div> -->
									
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>رقم الهاتف</label>
											<input type="number" name="mobile" class="form-control" id="mobileid">
										</div>
									</div>
									<div class="col-12 col-sm-12">
										<div class="form-group">
											<label>صورة المتجر</label>
											<img src="" id="photoid">
											<input type="file"  name="photo" class="form-control" value="{{old('photo')}}">
										</div>
									</div>
									
								</div>
								<button type="submit" class="btn btn-primary btn-block">حفظ التغيير</button>
							</form>



						</div>
					</div>
				</div>
			</div>
			<!-- /Edit Details Modal -->
			
			<!-- Delete Modal -->
			<div class="modal fade" id="delete" aria-hidden="true" role="dialog">
				<div class="modal-dialog modal-dialog-centered" role="document" >
					<div class="modal-content">
					<!--	<div class="modal-header">
							<h5 class="modal-title">Delete</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>-->
						<div class="modal-body">
							<div class="form-content p-2">
								<h4 class="modal-title">حذف</h4>
								<p class="mb-4">هل انت متأكد من حذف هذا العنصر ؟</p>
								<div class="row text-center">
									<div class="col-sm-3">
									</div>
									<div class="col-sm-2">
										<form method="post" action="{{route('sellers.destroy','test')}}">
	                                   		 @csrf
	                                         @method('delete')
	                                         <input type="hidden" name="id" id="cat_id" >
	                                    	<button type="submit" class="btn btn-primary">حذف </button>
	                                    </form>
									</div>
									<div class="col-sm-2">
										<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </section>



<script src="{{asset('js/app.js')}}"></script>

<script>
    $('#edit').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) 
      var name = button.data('name') 
      // var email = button.data('email') 
      var mobile = button.data('mobile') 
      var photo = button.data('photo') 
      var cat_id = button.data('catid') 
      var modal = $(this)

      modal.find('.modal-body #nameid').val(name);
      // modal.find('.modal-body #emailid').val(email);
      modal.find('.modal-body #mobileid').val(mobile);
      modal.find('.modal-body #photoid').val(photo);
      modal.find('.modal-body #cat_id').val(cat_id);
    })


	 $('#delete').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) 

      var cat_id = button.data('catid') 
      var modal = $(this)

      modal.find('.modal-body #cat_id').val(cat_id);
})


</script>

<style>
    .add-video {
      position: relative;
      display: inline-block;
    }

    .add-video .addvideo {
      visibility: hidden;
      width: 76px;
      font-size: 10px;
      background-color: black;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;
      
      position: absolute;
      z-index: 1;
      bottom: 100%;
      left: 50%;
      margin-left: -35px;
    }

    .add-video:hover .addvideo {
      visibility: visible;
    }
    /*//////////////*/

    .all-video {
      position: relative;
      display: inline-block;
    }

    .all-video .allvideo {
      visibility: hidden;
      width: 75px;
      font-size: 10px;
      background-color: black;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;
      
      position: absolute;
      z-index: 1;
      bottom: 100%;
      left: 50%;
      margin-left: -35px;
    }

    .all-video:hover .allvideo {
      visibility: visible;
    }

    /*//////////////*/

    .edit-course {
      position: relative;
      display: inline-block;
    }

    .edit-course .editcourse {
      visibility: hidden;
      width: 75px;
      font-size: 10px;
      background-color: black;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;
      
      position: absolute;
      z-index: 1;
      bottom: 100%;
      left: 50%;
      margin-left: -35px;
    }

    .edit-course:hover .editcourse {
      visibility: visible;
    }

    /*//////////////*/

    .delete-course {
      position: relative;
      display: inline-block;
    }

    .delete-course .deletecourse {
      visibility: hidden;
      width: 75px;
      font-size: 10px;
      background-color: black;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;
      
      position: absolute;
      z-index: 1;
      bottom: 100%;
      left: 50%;
      margin-left: -35px;
    }

    .delete-course:hover .deletecourse {
      visibility: visible;
    }
</style>

@endsection

