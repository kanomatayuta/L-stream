<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Routing\ResponseFactory;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Pagination\LengthAwarePaginator;

class ResponseServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot(ResponseFactory $factory)
    {
        $factory->macro('success', function ($data = null) use ($factory) {
            $format = [
                'status' => true,
                'code' => 200,
                'message' => 'The request was successful',
                'timestamp' => time(),
                'timezone' => config('app.timezone')
            ];

            if ($data instanceof AnonymousResourceCollection) {
                $data = $data->response()->getData(true);
            } else if ($data instanceof LengthAwarePaginator) {
                $data['data'] = $data->items();
            } else if ($data instanceof ResourceCollection) {
                $data['data'] = $data->items();
            }

            if (isset($data['data'])) {
                $format['result'] = $data;
            } else {
                $format['result']['data'] = $data;
            }
            return $factory->make($format, 200);
        });

        $factory->macro('failure', function (string $message = '', $code = '', $status = 400) use ($factory) {
            $format = [
                'status' => false,
                'code' => $code,
                'message' => $message,
                'timestamp' => time(),
                'timezone' => config('app.timezone'),
                'result' => null
            ];

            return $factory->make($format, $status);
        });
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
