
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
                   
			        <form  method="post"  action="{{route('products.update',$product->id)}}" enctype="multipart/form-data">
                @csrf
                 @method('put')
			           <div class="row form-row">
			              <div class="col-md-6">
  										<div class="form-group">
  											<label>التصنيف </label>
  											<select class="form-control select" name="categoryId">
  												<option>اختر التصنيف</option>
                          @foreach ($categories as $_item)
                             <option value="{{$_item->id}}" {{($_item->id==$product->categoryId) ? 'selected' : '' }}>{{$_item->getTranslation('name','ar')}}</option>
                          @endforeach
  											</select>
  										</div>
  									</div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>البراند </label>
                        <select class="form-control select" name="shopId">
                          <option>اختر البراند</option>
                          @foreach ($shops as $_item)
                             <option value="{{$_item->id}}" {{($_item->id==$product->shopId) ? 'selected' : '' }}>{{$_item->name}}</option>
                          @endforeach
                        </select>
                      </div>
                    </div>
                  <div class="col-md-6 col-sm-3">
                    <div class="form-group">
                      <label>اختر حجم المنتج </label>
                      <!-- $ggg=json_decode($product->size);
                      
                      $length_file = count($ggg);
                      if($length_file > 0)
                      {
                        for($i=0; $i<$length_file; $i++)
                        {
                          $fsfs=$item->size[$i];
                        }
                      } -->
                      <select class="select2-tags form-control" name="size" multiple="" id="select2-tags">
                                    <option value="xl">xl</option>
                                    <option value="xx">xx</option>
                                    <option value="ml" >ml</option>
                                    <option value="xlg">xlg</option>
                      </select>
                    </div>
                  </div>
                          
                  <div class="col-md-6 col-sm-3">
                    <div class="form-group">
                        <label>اختر لون المنتج</label>
                              <select class="form-control" style="" name="color" multiple="">
                        
                        <option value="#ff0000" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ff0000; color: #fff;">Relish</option>
                        <option value="#ff0040" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ff0040; color: #fff;">Mustard</option>
                        <option value="#ff0080" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ff0080; color: #fff;">Mustard</option>
                        <option value="#ff00bf" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ff00bf; color: #fff;">Mustard</option>

                        <option value="#000099" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#000099; color: #fff;">Relish</option>
                        <option value="#0000ff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#0000ff; color: #fff;">Mustard</option>
                        <option value="#4d4dff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#4d4dff; color: #fff;">Mustard</option>
                        <option value="#8080ff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#8080ff; color: #fff;">Mustard</option>

                        <option value="#000000" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#000000; color: #fff;">Relish</option>
                        <option value="#202020" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#202020; color: #fff;">Mustard</option>
                        <option value="#383838" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#383838; color: #fff;">Mustard</option>
                        <option value="#505050" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#505050; color: #fff;">Mustard</option>

                        <option value="#ffff00" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ffff00; color: #fff;">Relish</option>
                        <option value="#ffff4d" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ffff4d; color: #fff;">Mustard</option>
                        <option value="#ffff80" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ffff80; color: #fff;">Mustard</option>
                        <option value="#ffffcc" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#ffffcc; color: #fff;">Mustard</option>

                        <option value="#008000" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#008000; color: #fff;">Relish</option>
                        <option value="#00b300" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#00b300; color: #fff;">Mustard</option>
                        <option value="#00ff00" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#00ff00; color: #fff;">Mustard</option>
                        <option value="#66ff66" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#66ff66; color: #fff;">Mustard</option>

                        <option value="#996633" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#996633; color: #fff;">Relish</option>
                        <option value="#bf8040" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#bf8040; color: #fff;">Mustard</option>
                        <option value="#d9b38c" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#d9b38c; color: #fff;">Mustard</option>
                        <option value="#e6ccb3" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#e6ccb3; color: #fff;">Mustard</option>

                        <option value="#808080" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#808080; color: #fff;">Relish</option>
                        <option value="#a6a6a6" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#a6a6a6; color: #fff;">Mustard</option>
                        <option value="#cccccc" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#cccccc; color: #fff;">Mustard</option>
                        <option value="#e6e6e6" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#e6e6e6; color: #fff;">Mustard</option>

                        <option value="#9900e6" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#9900e6; color: #fff;">Relish</option>
                        <option value="#c44dff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#c44dff; color: #fff;">Mustard</option>
                        <option value="#d580ff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#d580ff; color: #fff;">Mustard</option>
                        <option value="#eeccff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#eeccff; color: #fff;">Mustard</option>

                        <option value="#004d4d" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#004d4d; color: #fff;">Relish</option>
                        <option value="#008080" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#008080; color: #fff;">Mustard</option>
                        <option value="#00cccc" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#00cccc; color: #fff;">Mustard</option>
                        <option value="#00ffff" style="padding: 13px 15px;margin: 0px -14px 1px 135px;background:#00ffff; color: #fff;">Mustard</option>
                      </select>
                    </div>
                  </div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الاسم المنتج عربي</label>
											<input type="text" name="name_ar" class="form-control" value="{{$product->getTranslation('names','ar')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الاسم إنجليزي</label>
											<input type="text" name="name_en" class="form-control" value="{{$product->getTranslation('names','en')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الوصف عربي</label>
											<input type="text" name="description_ar" class="form-control" value="{{$product->getTranslation('descriptions','ar')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الوصف انجليزي</label>
											<input type="text" name="description_en" class="form-control" value="{{$product->getTranslation('descriptions','en')}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>السعر</label>
											<input type="text" name="price" class="form-control" value="{{$product->price}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>الكمية</label>
											<input type="number" name="quantity" class="form-control" value="{{$product->quantity}}">
										</div>
									</div>
									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>رقم المودل</label>
											<input type="text" name="modal_number" class="form-control" value="{{$product->modal_number}}">
										</div>
									</div>
									

									<div class="col-12 col-sm-6">
										<div class="form-group">
											<label>إرفاق صورة أو أكثر</label>
											 <input type="file" name="imagee" class="myfrm form-control" multiple>
											<!-- <input type="file" name="imagee[]" class="form-control"  multiple> -->
											<!-- <input type="hidden" name="title[]" class="form-control" value="{{old('title')}}" multiple> -->

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
    
 <script src="http://code.jquery.com/jquery-3.4.1.js"></script>

<script> 
        $(document).ready(function () {
            $('#get_sub_category_name').on('change', function () {
                console.log("welcome sub"); 
                let id = $(this).val();
                $.ajax({
                    type: 'GET',
                    url: "{{url('instructor/getSubCategory')}}/"+id,
                    success: function (response) {
                        var response = JSON.parse(response)
                        console.log(response);   
                        $('#get_sub_category').empty();
                        $('#get_sub_category').append(`<option value="0" disabled selected>Select </option>`);
                        response.forEach(element => {
                            $('#get_sub_category').append(`<option value="${element['id']}">
                            ${element['title']} - ${element['id']} 
                            </option>`);
                        });
                    }
                });
            });
        });

        $(document).ready(function () {
            $('#get_sub_category').on('change', function () {
                console.log("welcome sub"); 
                let id = $(this).val();
                $.ajax({
                    type: 'GET',
                    url: "{{url('instructor/getchildcategory')}}/"+id,
                    success: function (response) {
                        var response = JSON.parse(response)
                        console.log(response);   
                        $('#get_child_category').empty();
                        $('#get_child_category').append(`<option value="0" disabled selected>Select </option>`);
                        response.forEach(element => {
                            $('#get_child_category').append(`<option value="${element['id']}">
                            ${element['title']} - ${element['id']} 
                            </option>`);
                        });
                    }
                });
            });
        });

    $('#delete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        var cat_id = button.data('catid') 
        var modal = $(this)
        modal.find('.modal-body #cat_id').val(cat_id);
    })
</script> 
    @toastr_js
    @toastr_render
@endsection