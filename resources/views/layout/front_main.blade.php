<!doctype html>
<html class="no-js" lang="en">

<head>
    @include('layout.front_head')
</head>

<body>
    <header>
    	

        @if(!Request::is('login/user','create/acount'))
            @include('layout.front_header')
        @endif 
       
    </header>    
    @yield('content')
    
    @if(!Request::is('login/user','create/acount'))
    	@include('layout.front_footer')
    @endif
    
    
</body>

</html>