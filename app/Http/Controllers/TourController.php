<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tour;
use App\Models\City;

class TourController extends Controller
{
    public function show($citySlug, $tourSlug)
    {
        // Find the city by slug
        $city = City::where('slug', $citySlug)->firstOrFail();

        // Find the tour by slug that belongs to the given city
        $tour = Tour::where('slug', $tourSlug)
            ->whereHas('tourDays.cities', function ($query) use ($city) {
                $query->where('cities.id', $city->id);
            })
            ->firstOrFail();

        return view('tours.show', compact('tour', 'city'));
    }
}
