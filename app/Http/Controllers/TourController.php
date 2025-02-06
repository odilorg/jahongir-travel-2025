<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tour;

class TourController extends Controller
{
    public function show($citySlug, $tourSlug)
{
    // Retrieve the requested tour with its relationships
    $tour = Tour::where('city_slug', $citySlug)
        ->where('slug', $tourSlug)
        ->with(['categories', 'tourDays']) // Load relationships
        ->firstOrFail();

    // Determine if the tour has multiple days
    $hasMultipleDays = $tour->tourDays->count() > 1;

    // Fetch related tours (e.g., by the same city or category)
    $relatedTours = Tour::where('id', '!=', $tour->id) // Avoid ambiguity by using 'id' only
    ->where(function ($query) use ($tour, $citySlug) {
        $query->where('city_slug', $citySlug)
              ->whereHas('categories', function ($query) use ($tour) {
                  $query->whereIn('tour_categories.id', $tour->categories->pluck('id'));
              });
    })
    ->limit(3)
    ->get();



    // Pass the data to the view
    return view('tours.show', compact('tour', 'hasMultipleDays', 'relatedTours'));
}

}
