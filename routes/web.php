<?php

use App\Http\Controllers\AllToursController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TourController;

    
Route::get('tours-from-{city_slug}/{slug}', [TourController::class, 'show'])->name('tours.show');

Route::get('tours-from-{city_slug}', [AllToursController::class, 'index'])->name('tours.index');
    


