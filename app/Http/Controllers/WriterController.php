<?php

namespace App\Http\Controllers;

use App\Models\Writer;

class WriterController extends Controller
{
    public function index()
    {
        $writers = Writer::withCount('posts')->get();
        return view('writers.index', compact('writers'));
    }

    public function show($id)
    {
        $writer = Writer::with('posts.category')->findOrFail($id);
        return view('writers.show', compact('writer'));
    }

}
