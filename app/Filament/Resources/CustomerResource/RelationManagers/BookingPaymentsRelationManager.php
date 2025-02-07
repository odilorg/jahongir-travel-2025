<?php

namespace App\Filament\Resources\CustomerResource\RelationManagers;

use Filament\Forms;
use Filament\Tables;
use App\Models\Booking;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\SelectColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Resources\RelationManagers\RelationManager;

class BookingPaymentsRelationManager extends RelationManager
{
    protected static string $relationship = 'bookingPayments';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('booking_id')
                ->label('Booked Tour Name')
                ->required()
                ->options(function () {
                    $customerId = $this->ownerRecord->id; // Get guide ID from RelationManager context

                    return Booking::with('tour') // Load tour relationship
                        ->where('customer_id', $customerId) // Filter only this guide's bookings
                        ->get()
                        ->pluck('tour.name', 'id'); // Display tour name, store booking ID
                })
                ->searchable()
                ->preload()
                ->live(), // Ensure it updates dynamically




            Select::make('payment_method')
                ->label('Payment Method')
                ->options([
                    'Cash' => 'Cash',
                    'Card' => 'Card',
                    'Bank Transfer' => 'Bank Transfer',
                    'Paypal' => 'Paypal',
                    'Stripe' => 'Stripe',
                    'Other' => 'Other',
                ])
                ->required(),

            Select::make('payment_status')
                ->label('Payment Status')
                ->required()
                ->options([
                    'Pending' => 'Pending',
                    'Paid' => 'Paid',
                    'Partial' => 'Partial',
                ]),

            TextInput::make('amount')
                ->required()
                ->numeric(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('amount')
            ->columns([
                Tables\Columns\TextColumn::make('booking.tour.name')
                ->sortable(),
            Tables\Columns\TextColumn::make('amount'),
            SelectColumn::make('payment_method')
                ->options([
                    'Cash' => 'Cash',
                    'Card' => 'Card',
                    'Bank Transfer' => 'Bank Transfer',
                    'Paypal' => 'Paypal',
                    'Stripe' => 'Stripe',
                    'Other' => 'Other',
                ]),
            SelectColumn::make('payment_status')
                ->options([
                    'Pending' => 'Pending',
                    'Paid' => 'Paid',
                    'Partial' => 'Partial',
                ]),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
}
