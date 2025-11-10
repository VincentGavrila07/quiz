@extends('layouts.app')

@section('title', $category->name . ' - EduFun')

@section('content')

<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold">{{ $category->name }}</h2>
            <p class="text-muted mb-0">{{ $category->description }}</p>
        </div>
        <div>
            <a href="{{ route('home') }}" class="btn btn-outline-secondary btn-sm">← Back to Home</a>
        </div>
    </div>

    @if ($posts->count())
        <div class="row">
            @foreach ($posts as $post)
                <div class="col-md-4 mb-4">
                    <div class="card h-100 shadow-sm">
                        <img src="{{ $post->image ?? 'https://picsum.photos/800/450?random=' . $post->id }}" class="card-img-top" alt="{{ $post->title }}">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">{{ $post->title }}</h5>
                            <p class="text-muted small mb-2">
                                By {{ $post->writer->name ?? '-' }} • {{ $post->created_at->format('d M Y') }}
                            </p>
                            <p class="card-text mb-3">{{ Str::limit($post->excerpt ?? $post->body, 120) }}</p>
                            <div class="mt-auto">
                                <a href="{{ route('posts.show', $post->slug) }}" class="btn btn-primary btn-sm">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="d-flex justify-content-center mt-4">
            {{ $posts->links('pagination::bootstrap-5') }}
        </div>
    @else
        <div class="alert alert-info">Belum ada posting untuk kategori ini.</div>
    @endif
</div>
@endsection
