

@extends('layout.instructor.main')
@section('content')	
		<div class="content-header row">
			        <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
			          <h3 class="content-header-title mb-0 d-inline-block">التصنيفات</h3><br>
			          <div class="row breadcrumbs-top d-inline-block">
			            <div class="breadcrumb-wrapper col-12">
			              <ol class="breadcrumb">
			                <li class="breadcrumb-item"><a href="index.html">Home</a>
			                </li>
			                <li class="breadcrumb-item active">التصنيفات
			                </li>
			              </ol> 
			            </div>
			          </div>
			        </div>
			        <div class="content-header-right col-md-6 col-12">
			          <!-- <div class="dropdown float-md-right">
			               <a href="#Add_Specialities_details" data-toggle="modal" class="btn btn-primary float-right mt-2">إضافة تصنيفات</a>
			          </div> -->
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
	<!-- 	<div class="content-header row">
			        <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
			          <h3 class="content-header-title mb-0 d-inline-block">الطلبات</h3><br>
			          <div class="row breadcrumbs-top d-inline-block">
			            <div class="breadcrumb-wrapper col-12">
			              <ol class="breadcrumb">
			                <li class="breadcrumb-item"><a href="index.html">الرئيسية</a>
			                </li>
			                <li class="breadcrumb-item active">الطلبات
			                </li>
			              </ol> 
			            </div>
			          </div>
			        </div><
			        
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
		</div> -->
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
													<th>رقم الطلب</th>
													<th>اسم العميل</th>
													<th> حالة الطلب</th>
													<th class="text-center">الإجراء</th>
												</tr>
											</thead>
											<tbody>
												
											@foreach ($orders as $key =>$_item)
												<tr>				
													<td class="text-center">
														{{$_item->id}}
													</td>
													<td class="text-center">
														{{$_item->buyer->name}}
													</td>
													<td> 
														@if($_item->status=="new") 
                                جاري المراجعه
                            @elseif($_item->status == "processing") 
                              تأكيد الطلب
                            @elseif($_item->status=="delivered") 
                              تم توصيل الطلب
                            @elseif($_item->status=="cancelled")
                              مرتجع  
                            @elseif($_item->status=="cancel")
                              ملغي  
                            @elseif($_item->status=="delete")
                              ملغي من العميل
                            @endif
                          </td>
													<td class="text-center">
														<div class="actions">
															<a href="{{url('vendors/order-details',$_item->id)}}" class="btn btn-primary mb-1 float-left select-node edit-course" >
                                تفاصيل الطلب
                              </a>
															<a class="btn btn-sm bg-success-light edit-course" data-toggle="modal"  data-target="#edit{{$key}}">
																<button type="button" class="btn btn-danger mr-2 mb-1 float-left select-node">تغيير حالة الطلب</button>
					                         <span class="editcourse">حالة الطلب </span>
															</a>
															<!-- <a href="#" class="delete-course">
                                <button type="button" class=" btn btn-outline-warning"><i class="la la-trash-o"></i></button>
                                  <span class="deletecourse">حذف </span>
                              </a> -->
														</div>
													</td>
												</tr>


												<div class="modal fade" id="edit{{$key}}" aria-hidden="true" role="dialog">
													<div class="modal-dialog modal-dialog-centered" role="document" >
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">تعديل الحالة</h5>
																<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																@if("delete"==$_item->status)
										              غير مسموح بتغير الحاله في حاله الغاء الطلب من العميل
										            @else
															 	<form action="{{route('vendor-order-status')}}" method="post"  enctype="multipart/form-data">
												          @csrf              
																	<div class="row form-row">
																		<input type="hidden" name="orderId" value="{{$_item->id}}">
																			<div class="col-12 col-sm-12">
																			<div class="form-group">
																				<label>تعديل الحالة</label>
																				<select class="form-control"  name="status">
					<option value="new" @if($_item->status=="new") selected @endif>(new) موافقة </option>
	        <option value="processing" @if($_item->status=="processing") selected @endif>(processing)  تأكيد الطلب</option></option>
					<option value="delivered" @if($_item->status=="delivered") selected @endif>(delivered) تم توصيل الطلب </option>
		      <option value="cancelled" @if($_item->status=="cancelled") selected @endif>(cancelled) مرتجع  </option>
		      <option value="cancel" @if($_item->status=="cancel") selected @endif>(cancel) إلغاء  </option>

										                    </select>
																			</div>
																		</div>
																		<div class="col-12 col-sm-12">
																			<div class="form-group">
																				<label>ملاحظة </label>
																				<input type="text" class="form-control" name="notes">
																			</div>	
																		</div>		
																	</div>
																	<button type="submit" class="btn btn-primary btn-block">حفظ التغيير</button>
																</form>
																@endif


															</div>
														</div>
													</div>
												</div>
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
										<form method="post" action="{{route('shops.destroy','test')}}">
	                                   		 @csrf
	                                         @method('delete')
	                                         <input type="hidden" name="id" id="cat_id" >
	                                    	<button type="submit" class="btn btn-primary">حذف </button>
	                                    </form>
									</div>
									<div class="col-sm-2">
										<button type="button" class="btn btn-danger" data-dismiss="modal">قفل</button>
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
      // var mobile = button.data('mobile') 
      // var photo = button.data('photo') 
      var cat_id = button.data('catid') 
      var modal = $(this)

      modal.find('.modal-body #nameid').val(name);
      // modal.find('.modal-body #emailid').val(email);
      // modal.find('.modal-body #mobileid').val(mobile);
      // modal.find('.modal-body #photoid').val(photo);
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

