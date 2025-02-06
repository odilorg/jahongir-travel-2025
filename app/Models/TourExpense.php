<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TourExpense extends Model
{
    protected $fillable = ['tour_id', 'guide_id', 'driver_id', 'payment_method', 'payment_status', 'amount'];

    public function tour()
    {
        return $this->belongsTo(Tour::class);
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
