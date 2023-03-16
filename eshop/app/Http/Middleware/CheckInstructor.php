<?php

namespace App\Http\Middleware;

use Auth;
use Illuminate\Support\Facades\Session;
use Closure;
class CheckInstructor
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::guard('vendorsbuyers')->check()==false){
            // dd(Auth::guard('students')->user()->name;);
            return redirect('user-login');
        }
        return $next($request);
    }
}
