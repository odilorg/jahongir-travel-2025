<?php

namespace App\Filament\Resources\BookingExpenseResource\Pages;

use App\Filament\Resources\BookingExpenseResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBookingExpenses extends ListRecords
{
    protected static string $resource = BookingExpenseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
