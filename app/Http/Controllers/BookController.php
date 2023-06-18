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

    public function rentBook(Request $request)
    {
        // Save the rental information for the user

        $book = Book::find($request->book_id);
        $book->quantity = $book->quantity - 1;
        $book->save();

        // Other code

        return redirect()->back()->with('success', 'Book rented successfully.');
    }
}