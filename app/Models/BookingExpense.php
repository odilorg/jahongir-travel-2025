<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BookingExpense extends Model
{
    protected $fillable = ['booking_id', 'guide_id', 'driver_id', 'payment_method', 'payment_status', 'amount'];

    public function booking()
    {
        return $this->belongsTo(Booking::class);
    }

    public function guide()
    {
        return $this->belongsTo(Guide::class);
    }

    public function driver()
    {
        return $this->belongsTo(Driver::class);
    }
}
