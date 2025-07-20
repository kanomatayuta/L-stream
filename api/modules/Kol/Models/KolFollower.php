<?php

namespace Modules\Kol\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KolFollower extends Model
{
    use HasFactory;

    protected $fillable = [
        'kol_id',
        'active_rate',
        'country',
        'city',
        'gender_rate',
        'age_rate',
        'brands',
        'favorites',
    ];
}
