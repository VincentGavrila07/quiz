<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::with(['category', 'writer'])->latest()->paginate(6);
        return view('posts.index', compact('posts'));
    }

    public function show($slug)
    {
        $post = Post::with(['category', 'writer'])->where('slug', $slug)->firstOrFail();
        return view('posts.show', compact('post'));
    }
}
