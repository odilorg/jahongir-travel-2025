<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TransportType extends Model
{
    //

    protected $fillable = [
        'type',
        'cost',
        'price_type'
    ];
}
