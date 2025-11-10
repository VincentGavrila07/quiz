@extends('layouts.app')

@section('title', 'Home')

@section('content')
    <div class="hero-section text-center my-5">
        <h1 class="fw-bold">Selamat Datang di EduFun!</h1>
        <p class="text-muted">Temukan kategori pembelajaran IT yang kamu suka.</p>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            @foreach ($categories as $category)
                <div class="col-md-4 mb-4">
                    <div class="card h-100 shadow-sm border-0">
                        <img src="https://picsum.photos/400/250?random={{ $category->id }}" 
                             class="card-img-top" 
                             alt="{{ $category->name }}">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bold">{{ $category->name }}</h5>
                            <p class="card-text text-muted">{{ Str::limit($category->description, 80) }}</p>
                            <a href="{{ route('categories.show', $category->slug) }}" 
                               class="btn btn-primary btn-sm">
                                Lihat {{ $category->posts_count }} Post
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
