<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\TourController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\AllToursController;

Route::get('tours-from-{city_slug}/{slug}', [TourController::class, 'show'])->name('tours.show');

Route::get('tours-from-{city_slug}', [AllToursController::class, 'index'])->name('tours.index');

Route::get('about', function () {
    return view('about');
})->name('about');

Route::get('contact', function () {
    return view('contact');
})->name('contact');

// Route::get('/', function () {
//     return view('main');
// })->name('main');
Route::get('/', [MainController::class, 'all'])->name('main');

Route::get('{country_slug}-tours/{slug}', [CountryController::class, 'show'])->name('tours.country_tour.show');

Route::get('{country_slug}-tours', [CountryController::class, 'index'])->name('tours.country_tour.index');