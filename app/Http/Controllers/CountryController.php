<?php

namespace App\Http\Controllers;

use App\Models\Tour;

class CountryController extends Controller
{
    public function show($countrySlug, $tourSlug)
{
    // Retrieve the requested tour with its relationships
    $tour = Tour::where('country_slug', $countrySlug)
        ->where('slug', $tourSlug)
        ->with(['categories', 'tourDays']) // Load relationships
        ->firstOrFail();

    // Determine if the tour has multiple days
    $hasMultipleDays = $tour->tourDays->count() > 1;

    // Fetch related tours (e.g., by the same city or category)
    $relatedTours = Tour::where('tours.id', '!=', $tour->id) // Use 'tours.id' to avoid ambiguity
    ->where('country_slug', $countrySlug)
    ->orWhereHas('categories', function ($query) use ($tour) {
        $query->whereIn('tour_categories.id', $tour->categories->pluck('id')); // Use 'tour_categories.id'
    })
    ->limit(5)
    ->get();


    // Pass the data to the view
    return view('tours.country_tour.show', compact('tour', 'hasMultipleDays', 'relatedTours'));
}

public function index($countrySlug) {

    $allTours = Tour::where('country_slug', $countrySlug)
        ->with(['categories', 'tourDays'])
        ->get();
// /dd($allTours);
         // Pass the data to the view
return view('tours.country_tour.index', compact('allTours', 'countrySlug'));

}

}
