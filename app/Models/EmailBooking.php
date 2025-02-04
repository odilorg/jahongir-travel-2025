<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EmailBooking extends Model
{
   
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'phone',
        'hotel_to_pickup',
        'departure_date',
        'number_adults',
        'number_children',
        'tour_name',
        'tour_code',
    ];
}
