<?php

namespace App\Listeners;

use App\Events\UserForgetPasswordEvent;
use App\Helpers\LogHelper;
use Exception;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class UserForgetPasswordSendMail
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param UserForgetPasswordEvent $event UserForgetPasswordEvent.
     *
     * @return mixed
     */
    public function handle(UserForgetPasswordEvent $event)
    {
        try {
            $config = $event->userResetPassword;
            Mail::send('mail/userForgetPasswordMail', $config, function ($message) use ($config) {
                $message->from(config('constant.mail_from_address'), config('constant.mail_from_name'));
                $message->to($config['mail'], 'user');
                $message->subject(config('constant.mail_subject'));
            });
        } catch (\Exception $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
