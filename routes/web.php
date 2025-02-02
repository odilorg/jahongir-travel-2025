<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TourController;

Route::get('/tours-from-{city}/{tour}', [TourController::class, 'show'])
    ->where(['city' => '[a-zA-Z0-9-]+', 'tour' => '[a-zA-Z0-9-]+'])
    ->name('tour.show');




