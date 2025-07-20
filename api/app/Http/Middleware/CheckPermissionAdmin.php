<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckPermissionAdmin
{
    /**
     * Handle request permission
     *
     * @param \Illuminate\Http\Request $request Request data.
     * @param Closure                  $next    Closure.
     *
     * @return \Illuminate\Http\JsonResponse|mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (config('constant.authorization')
            && Auth::guard('api')->check()
            && auth()->guard('api')->user()->role_type !== config('constant.user_role_type.admin')
        ) {
            return response()->json(['message' => 'You don\'t have permission to do this'], 403);
        }

        return $next($request);
    }
}
