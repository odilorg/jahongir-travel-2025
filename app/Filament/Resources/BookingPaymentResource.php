<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Booking;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\BookingPayment;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\SelectColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\BookingPaymentResource\Pages;
use App\Filament\Resources\TourPaymentResource\RelationManagers;

class BookingPaymentResource extends Resource
{
    protected static ?string $model = BookingPayment::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([



                Forms\Components\Select::make('customer_id')
                    ->required()
                    ->relationship('customer', 'name')
                    ->live(), // Add reactive to update booking options when customer changes

                Forms\Components\Select::make('booking_id')
                     ->label('Booked Tour Name')
                    ->required()
                    ->options(function (callable $get) {
                        $customerId = $get('customer_id');

                        if (!$customerId) {
                            return [];
                        }

                        return Booking::where('customer_id', $customerId)
                            ->with('tour') // Eager load the tour relationship
                            ->get()
                            ->pluck('tour.name', 'id'); // Use tour name from the related model
                    })
                    ->searchable() // Optional: if you want search functionality
                    ->preload(), // Optional: if you want to preload options

                Forms\Components\Select::make('payment_method')
                    ->options([
                        'Cash' => 'Cash',
                        'Card' => 'Card',
                        'Bank Transfer' => 'Bank Transfer',
                        'Paypal' => 'Paypal',
                        'Stripe' => 'Stripe',
                        'Other' => 'Other',
                    ])
                    ->required(),
                Forms\Components\Select::make('payment_status')
                    ->required()
                    ->options([
                        'Pending' => 'Pending',
                        'Paid' => 'Paid',
                        'Partial' => 'Partial',
                    ]),
                Forms\Components\TextInput::make('amount')
                    ->required()
                    ->numeric(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('booking.tour.name')
                    ->sortable(),
                Tables\Columns\TextColumn::make('customer.name')
                    ->sortable(),
                // Tables\Columns\TextColumn::make('payment_method')
                //     ->searchable(),
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
                Tables\Columns\TextColumn::make('amount')
                    ->numeric()
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBookingPayments::route('/'),
            'create' => Pages\CreateBookingPayment::route('/create'),
            'edit' => Pages\EditBookingPayment::route('/{record}/edit'),
        ];
    }
}
