<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    public function findBooks(Request $request)
    {
        $books = Book::where('title', 'like', '%' . $request->title . '%')->get();
        return response()->json($books);
    }
}