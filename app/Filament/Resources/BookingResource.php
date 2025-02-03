<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BookingResource\Pages;
use App\Filament\Resources\BookingResource\RelationManagers;
use App\Models\Booking;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BookingResource extends Resource
{
    protected static ?string $model = Booking::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('tour_id')
                    ->required()
                    ->relationship('tour', 'name'),
                Forms\Components\Select::make('customer_id')
                    ->required()
                    ->relationship('customer', 'name'),
                Forms\Components\DatePicker::make('date')
                    ->required(),
                    Select::make('booking_status')
                    ->options([
                        'pending' => 'Pending',
                        'ongoing' => 'Ongoing',
                        'complete' => 'Complete',
                        'cancelled' => 'Cancelled',
                    ]),
                Forms\Components\Select::make('driver_id')
                   // ->numeric()
                    ->relationship('driver', 'name'),
                Forms\Components\Select::make('guide_id')
                  //  ->numeric()
                    ->relationship('guide', 'name'),
                Forms\Components\Select::make('hotel_id')
                    ->relationship('hotel', 'name'),
                    
                Forms\Components\Select::make('restaurant_id')
                    ->relationship('restaurant', 'name'),
                
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
                Tables\Columns\TextColumn::make('tour.name')
                    //numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('customer.name')
                   // ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('date')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('driver.name')
                    //->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('guide.name')
                   // ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('hotel.name')
                   // ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('restaurant.name')
                    //->numeric()
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
            'index' => Pages\ListBookings::route('/'),
            'create' => Pages\CreateBooking::route('/create'),
            'edit' => Pages\EditBooking::route('/{record}/edit'),
        ];
    }
}
