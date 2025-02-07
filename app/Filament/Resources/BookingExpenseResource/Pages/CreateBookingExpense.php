<?php

namespace App\Filament\Resources\BookingExpenseResource\Pages;

use App\Filament\Resources\BookingExpenseResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateBookingExpense extends CreateRecord
{
    protected static string $resource = BookingExpenseResource::class;
}
