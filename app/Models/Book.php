<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        'id',
        'title',
        'author',
        'kind_id',
        'description',
        'image',
        'quantity',
    ];

    protected $table = 'books';

    public function kind()
    {
        return $this->belongsTo(Kind::class);
    }

    public $timestamps = false;
}
