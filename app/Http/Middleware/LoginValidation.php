<?php

namespace App\Http\Middleware;

use Closure;

class LoginValidation
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
        if (!session('scout_in')) {
            return redirect('/login')->with('status', "<div class='alert alert-danger'>Silahkan login!</div>");
        }
        return $next($request);
    }
}
