<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transport extends Model
{
    protected $fillable = [
        'plate_number',
        'model',
        'number_of_seat',
        'category',
        'transport_type_id',
        'departure_time',
        'arrival_time',
       
        'city_id'
    ];

    

    public function transportType()
    {
        return $this->belongsTo(TransportType::class);
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }

}
