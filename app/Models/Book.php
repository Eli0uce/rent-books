<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        'id',
        'title',
        'author',
        'kind',
        'description',
        'image',
        'quantity',
    ];

    protected $table = 'books';

    public $timestamps = true;
}
