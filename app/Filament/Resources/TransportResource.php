<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use App\Models\Transport;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TimePicker;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\TransportResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TransportResource\RelationManagers;

class TransportResource extends Resource
{
    protected static ?string $model = Transport::class;
    protected static ?string $navigationGroup = 'Tour Items';


    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('category')
                    ->label('Category')
                    ->options([
                        'bus' => 'Bus',
                        'car' => 'Car',
                        'mikro_bus' => 'Mikro Bus',
                        'air' => 'Air',
                        'rail' => 'Rail',
                    ])
                    ->live() // Make it reactive
                    ->required(),

                Select::make('transport_type_id')
                    ->label('Transport Type')
                    ->options(function ($get) {
                        $selectedCategory = $get('category');

                        if (!$selectedCategory) {
                            return [];
                        }

                        // Fetch the transport types dynamically based on the selected category
                        return \App\Models\TransportType::where('category', $selectedCategory)
                            ->pluck('type', 'id');
                    })
                    ->required()
                    ->preload(),
                Forms\Components\TextInput::make('plate_number')
                ->visible(function ($get) {
                    return $get('category') !== 'rail';
                })
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('model')
                ->visible(function ($get) {
                    return $get('category') !== 'rail';
                })
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('number_of_seat')
                ->visible(function ($get) {
                    return $get('category') !== 'rail';
                })
                    ->required()
                    ->numeric(),
                TimePicker::make('departure_time')
                    ->visible(function ($get) {
                        return $get('category') === 'rail';
                    })
                    ->required(),
                      
               TimePicker::make('arrival_time')
                ->visible(function ($get) {
                    return $get('category') === 'rail';
                })
                    ->required(),
                   
                 
                

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
                Tables\Columns\TextColumn::make('plate_number')
                    ->searchable(),
                Tables\Columns\TextColumn::make('model')
                    ->searchable(),
                Tables\Columns\TextColumn::make('number_of_seat')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('category'),
                Tables\Columns\TextColumn::make('transportType.transportPrices.cost')
                    ->label('Per Day, Per Pickup'),


                Tables\Columns\TextColumn::make('transportType.type')
                    //  ->numeric()
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
            'index' => Pages\ListTransports::route('/'),
            'create' => Pages\CreateTransport::route('/create'),
            'edit' => Pages\EditTransport::route('/{record}/edit'),
        ];
    }
}
