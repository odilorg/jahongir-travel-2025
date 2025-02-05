<?php

namespace App\Http\Controllers;

use App\Models\Tour;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class MainController extends Controller
{


    public function all() {
         $allTours = Tour::limit(9)->get();

        Log::info('All tours: ' . $allTours);
             // Pass the data to the view
    return view('main', compact('allTours',));

    }
}
