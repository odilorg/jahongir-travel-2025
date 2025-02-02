<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tour;

class TourController extends Controller
{
    public function show($citySlug, $tourSlug)
    {
        // Retrieve the tour where city_slug and slug match
        $tour = Tour::where('city_slug', $citySlug)
            ->where('slug', $tourSlug)
            ->firstOrFail();

        return view('tours.show', compact('tour'));
    }
}

