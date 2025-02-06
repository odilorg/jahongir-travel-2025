<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\TourExpense;
use Filament\Resources\Resource;
use Filament\Tables\Columns\SelectColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\TourExpenseResource\Pages;
use App\Filament\Resources\TourExpenseResource\RelationManagers;

class TourExpenseResource extends Resource
{
    protected static ?string $model = TourExpense::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('tour_id')
                    ->required()
                    ->relationship('tour', 'name'),
                    Forms\Components\Select::make('guide_id')
                //    / ->required()
                    ->relationship('guide', 'name'),
                    Forms\Components\Select::make('driver_id')
                   // ->required()
                    ->relationship('driver', 'name'),
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
                Tables\Columns\TextColumn::make('tour.name')
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
            'index' => Pages\ListTourExpenses::route('/'),
            'create' => Pages\CreateTourExpense::route('/create'),
            'edit' => Pages\EditTourExpense::route('/{record}/edit'),
        ];
    }
}
