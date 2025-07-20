<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller;

class BaseController extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    const GUARD_NAME = 'api';

    // System error code
    const CODE_ERROR_400 = 400;
    const CODE_ERROR_403 = 403;
    const CODE_ERROR_404 = 404;
    const CODE_ERROR_500 = 500;
    // End system error code
}
