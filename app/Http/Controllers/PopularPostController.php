<?php

namespace App\Http\Controllers;

use App\Models\PopularPost;

class PopularPostController extends Controller
{
    public function index()
    {
        $popularPosts = PopularPost::with('post.writer')
            ->paginate(3);

        return view('popular.index', compact('popularPosts'));
    }
}
