<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Booking;
use Filament\Forms\Get;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\BookingExpense;
use Filament\Resources\Resource;
use Illuminate\Support\Collection;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\SelectColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\BookingExpenseResource\Pages;
use App\Filament\Resources\BookingExpenseResource\RelationManagers;

class BookingExpenseResource extends Resource
{
    protected static ?string $model = BookingExpense::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
               
               
                
                // Guide Selection
                Select::make('guide_id')
                    ->label('Guide')
                    ->relationship('guide', 'name')
                    ->live() // Re-render when selected
                    ->hidden(fn (Get $get) => filled($get('driver_id'))),
                
                // Booking Selection (Dynamically filtered based on selected Guide or Driver)
                Select::make('booking_id')
                    ->label('Booked Tour Name')
                    ->required()
                    ->options(function (callable $get) {
                        $guideId = $get('guide_id');
                        $driverId = $get('driver_id');
                
                        if (!$guideId && !$driverId) {
                            return []; // Return empty if neither guide nor driver is selected
                        }
                
                        return Booking::with('tour') // Load tour relationship
                            ->when($guideId, fn ($query) => $query->where('guide_id', $guideId))
                            ->when($driverId, fn ($query) => $query->where('driver_id', $driverId))
                            ->get()
                            ->pluck('tour.name', 'id'); // Display tour name, store booking ID
                    })
                    ->searchable()
                    ->preload()
                    ->live(), // Ensure it updates dynamically when guide/driver changes
                
                // Driver Selection
                Select::make('driver_id')
                    ->label('Driver')
                    ->relationship('driver', 'name')
                    ->live() // Re-render when selected
                    ->hidden(fn (Get $get) => filled($get('guide_id'))),
                
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
                Tables\Columns\TextColumn::make('guide.name')
                ->placeholder('No guide')


                    ->sortable(),
                Tables\Columns\TextColumn::make('driver.name')
                ->placeholder('No driver')


                    ->sortable(),
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
            'index' => Pages\ListBookingExpenses::route('/'),
            'create' => Pages\CreateBookingExpense::route('/create'),
            'edit' => Pages\EditBookingExpense::route('/{record}/edit'),
        ];
    }
}
