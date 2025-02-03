<?php

namespace App\Http\Controllers;

use App\Models\Tour;
use Illuminate\Http\Request;

class AllToursController extends Controller
{
    public function index($citySlug) {
        $allTours = Tour::where('city_slug', $citySlug)
            ->with(['categories', 'tourDays'])
            ->get();

             // Pass the data to the view
    return view('tours.index', compact('allTours'));

    }
}
