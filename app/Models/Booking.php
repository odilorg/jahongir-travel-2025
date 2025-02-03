<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $fillable = [
        'tour_id',
        'customer_id',
        'date',
        'driver_id',
        'guide_id',
        'hotel_id',
        'restaurant_id',
        'booking_status',
    ];

    public function tour()
    {
        return $this->belongsTo(Tour::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function driver()
    {
        return $this->belongsTo(Driver::class);
    }

    public function guide()
    {
        return $this->belongsTo(Guide::class);
    }

    public function hotel()
    {
        return $this->belongsTo(Hotel::class);
    }

    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class);
    }

   
}
