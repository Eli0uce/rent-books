<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BookResource\Pages;
use App\Filament\Resources\BookResource\RelationManagers;
use App\Models\Book;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BookResource extends Resource
{
    protected static ?string $model = Book::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';
    protected static ?string $navigationGroup = 'Espace Membre';
    protected static ?string $navigationLabel = 'Livres';
    protected static ?string $modelLabel = 'Livre';
    protected static ?string $pluralModelLabel = 'Livres';
    protected static ?string $slug = 'books';
    protected static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('image')
                    ->autofocus()
                    ->label('Image')
                    ->placeholder('Image du livre'),
                Forms\Components\TextInput::make('title')
                    ->label('Titre')
                    ->required()
                    ->placeholder('Titre du livre'),
                Forms\Components\TextInput::make('author')
                    ->label('Auteur')
                    ->required()
                    ->placeholder('Auteur du livre'),
                Forms\Components\Select::make('kind')
                    ->label('Genre')
                    ->placeholder('Genre du livre')
                    ->options([
                        'roman' => 'Roman',
                        'fantasy' => 'Fantasy',
                        'bd' => 'Bande dessinée',
                        'manga' => 'Manga',
                        'poesie' => 'Poésie',
                        'theatre' => 'Théâtre',
                        'autres' => 'Autres',
                    ]),
                Forms\Components\TextInput::make('quantity')
                    ->label('Quantité')
                    ->required()
                    ->placeholder('Quantité du livre'),
                Forms\Components\Textarea::make('description')
                    ->label('Description')
                    ->required()
                    ->placeholder('Description du livre'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->label('Image')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('title')
                    ->label('Titre')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('author')
                    ->label('Auteur')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('kind')
                    ->label('Genre')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('quantity')
                    ->label('Quantité')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('description')
                    ->label('Description')
                    ->sortable()
                    ->limit(30)
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListBooks::route('/'),
            'create' => Pages\CreateBook::route('/create'),
            'edit' => Pages\EditBook::route('/{record}/edit'),
        ];
    }
}