
    @extends('layout.front_main')
@section('content') 


    <!-- start signup -->
    <section class="form-section">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-md-4">
                    <h6>Sign Up and Start Learning </h6>
                    <hr>
                    @if(session()->has('message'))
                      @include('admin.includes.alerts.success')
                    @endif

                    @if(Session::has('errorss'))
                    <div class="row mr-2 ml-2" >
                      <button type="text" class="btn btn-lg btn-block btn-outline-danger mb-2" id="type-error">
                         {{Session::get('errorss')}}
                      </button>
                     </div>
                     @endif


                    <form method="POST" action="{{route('create.acount')}}" enctype="multipart/form-data">
                                @csrf
                        <div class="form-group">
                            <p class="text-small mb-2"> <span class="font-weight-bold  text-danger">Note:</span> Type your full name as you wish to print the certificates later, it cannot be modified after subscribing</p>
                            <i class="fas fa-user icon"></i>
                            <input type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="Full Name">
                        </div>


                        <div class="form-group">
                            <i class="fas fa-envelope icon"></i>
                            <input type="email" name="email" value="{{ old('email') }}" class="form-control" placeholder="Email">
                        </div>

                        <div class="form-group">
                            <i class="fas fa-lock icon"></i>
                            <input type="password" name="password" value="{{ old('password') }}" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <i class="fas fa-lock icon"></i>
                            <input type="password" class="form-control" placeholder="Confirm Password">
                        </div>

                        <div class="form-group">
                            <i class="fas fa-lock icon"></i>
                            <select name="countryId" id="get_city_name" class="form-control"  >
                                        <option  disabled selected>Select</option>  
                                        @foreach ($countries as $_item) 
                                            <option value="{{$_item->id}}">{{$_item->name}}</option>
                                        @endforeach
                                    </select>
                        </div>

                        

                        <div class="form-group mt-4 mb-4">
                            <div class="row">

                                <div class="col-2 pr-0 mt-2">
                                    <input type="checkbox" class="form-control">
                                </div>
                                <div class="col-10 pl-0">
                                    <small class="text-small">By signing up, you agree to our
                                        <a href="terms-of-use.html" class="main-color"> Terms of Use </a> and 
                                        <a href="privacy-policy.html"
                                            class="main-color">Privacy Policy.</a>
                                    </small>
                                </div>

                            </div>
                        </div>
                        <button type="submit" class="w-100 btn header-btn text-large font-weight-bold mb-4">Sign
                            Up</button>
                    </form>
                    <hr>
                    <div class="text-center">
                        <p>Already have an account? <a href="{{url('login/user')}}" class="main-color font-weight-bold">Log In</a>
                        </p>

                    </div>


                </div>





            </div>
        </div>
    </section>
    <!-- end signup -->


@endsection
