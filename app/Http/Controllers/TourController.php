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
    $relatedTours = Tour::where('tours.id', '!=', $tour->id) // Use 'tours.id' to avoid ambiguity
    ->where('city_slug', $citySlug)
    ->orWhereHas('categories', function ($query) use ($tour) {
        $query->whereIn('tour_categories.id', $tour->categories->pluck('id')); // Use 'tour_categories.id'
    })
    ->limit(5)
    ->get();


    // Pass the data to the view
    return view('tours.show', compact('tour', 'hasMultipleDays', 'relatedTours'));
}

}
