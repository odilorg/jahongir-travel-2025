<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TourPayment extends Model
{
    protected $fillable = ['tour_id', 'customer_id', 'payment_method', 'payment_status', 'amount'];

    public function tour()
    {
        return $this->belongsTo(Tour::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
