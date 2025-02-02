<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tour;

class TourController extends Controller
{
    public function show($citySlug, $tourSlug)
    {
        // Retrieve the tour where city_slug and slug match
        // Retrieve the tour with its relationships
    $tour = Tour::where('city_slug', $citySlug)
    ->where('slug', $tourSlug)
    ->with(['categories', 'tourDays']) // Load relationships
    ->firstOrFail();
    $hasMultipleDays = $tour->tourDays->count() > 1;
return view('tours.show', compact('tour', 'hasMultipleDays'));
    }
}

