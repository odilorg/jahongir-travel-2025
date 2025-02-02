<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Tour extends Model
{
    protected $fillable = ['name', 'description', 'tour_number',
     'number_people',
     'tour_duration',
     'start_date',
     'end_date',
     'image',
     'tour_file',
        'departure_return_location',
        'departure_time',
        'tour_includes',
        'tour_excludes',
        'tour_prices',
        'tour_photos',
        'slug',
        'start_from_city',
        'city_slug',
        
    ];

    public function categories()
    {
        return $this->belongsToMany(TourCategory::class, 'tour_tour_category');
    }
    protected $casts = [
        'tour_includes' => 'array',
        'tour_excludes' => 'array',
        'tour_prices' => 'array',
        'tour_photos' => 'array',
    ];


    public function tourDays(): HasMany
    {
        return $this->hasMany(TourDay::class);
    }

    public function estimates(): HasMany
    {
        return $this->hasMany(Estimate::class);
    }

    

    
}