@extends('layout.instructor.main')
@section('content')	
		
		<div class="content-header row">
			<div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
		        <h3 class="content-header-title mb-0 d-inline-block">العروض</h3><br>
			        <div class="row breadcrumbs-top d-inline-block">
			 	        <div class="breadcrumb-wrapper col-12">
			              <ol class="breadcrumb">
			                <li class="breadcrumb-item"><a href="{{url('vendors/dashboard')}}">الرئيسية</a>
			                </li>
			                <li class="breadcrumb-item active">المنتجات
			                </li>
			              </ol> 
		            </div>
		        </div>
			</div>
		   <!-- <div class="col-sm-5 col">
				<a href="#Add_Specialities_details" data-toggle="modal" class="btn btn-primary float-right mt-2">إضافة عرض</a>
			</div> -->
			<div class="content-header-right col-md-6 col-12">
			    <div class="dropdown float-md-right">
		           <a href="#Add_Specialities_details" data-toggle="modal" class="btn btn-primary float-right mt-2">إضافة عرض</a>
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
	                <div class="card-header">
	                    <h4 class="card-title"></h4>
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
	                            <div class="table-responsive">
	                                <table class="table table-striped table-bordered keytable-integration">
	                                    <thead>
											<tr>	
												<th class="text-center">صورة العرض</th>
												<th class="text-center">السعر</th>
												<th class="text-center">التاريخ</th>
												
												<th class="text-center">العمليات</th>
											</tr>
				 						</thead>
										<tbody>
											@foreach ($offers as $_item)
												<tr>
													<td>
														<img class="avatar-img" src="{{asset('img/offers/'.$_item->image) }}" alt="offers" width="80px">
													</td>
													<td>
														{{ $_item->price }}
													</td>
													<td>
														من تاريخ {{ $_item->form_date }} إلى تاريخ {{ $_item->to_date }} 
													</td>
													<td class="text-center">
														<div class="actions">
															<a href="{{route('offers.edit',$_item->id)}}" class="btn btn-sm bg-success-light" >
																<button type="button" class="btn btn-outline-success "><i class="la la-edit"></i></button>
															</a>
															<a  data-toggle="modal" data-catid="{{ $_item->id }}" data-target="#delete" class="delete-course">
				                                           		<button type="button" class=" btn btn-outline-warning"><i class="la la-trash-o"></i></button>
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
							<h5 class="modal-title">أضافة عرض</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="{{route('offers.store')}}" method="POST" 
                                name="le_form"  enctype="multipart/form-data">
                                @csrf
								<div class="row form-row">
									<input type="hidden" name="productId" value="{{$id}}">
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>السعر الجديد</label>
											<input type="text" name="price" class="form-control" value="{{old('price')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>من تاريخ </label>
											<input type="date" name="form_date" class="form-control" value="{{old('form_date')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>إلى تاريخ</label>
											<input type="date" name="to_date" class="form-control" value="{{old('to_date')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>صورة العرض</label>
											<input type="file"  name="image" class="form-control" value="{{old('image')}}">
										</div>
									</div>
									
									
								</div>
								<button type="submit" class="btn btn-primary btn-block">إضافة العرض </button>
							</form>
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
										<form method="post" action="{{route('offers.destroy','test')}}">
	                                   		 @csrf
	                                         @method('delete')
	                                         <input type="hidden" name="id" id="cat_id">
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