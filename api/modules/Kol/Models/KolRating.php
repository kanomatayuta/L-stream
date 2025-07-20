<?php

namespace Modules\Kol\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Modules\User\Models\User;

class KolRating extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'kol_id',
        'rate',
        'comment',
    ];

    /**
     * User
     *
     * @return mixed
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Kol
     *
     * @return mixed
     */
    public function kol()
    {
        return $this->belongsTo(Kol::class);
    }
}
