<?php

namespace App\Filament\Resources\BookingExpenseResource\Pages;

use App\Filament\Resources\BookingExpenseResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBookingExpense extends EditRecord
{
    protected static string $resource = BookingExpenseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
