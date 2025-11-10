@extends('layouts.app')

@section('title', 'Popular Posts')

@section('content')
<div class="container">
    <h1 class="mb-4 text-center">Popular Posts</h1>

    <div class="row">
        @foreach ($popularPosts as $pop)
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">{{ $pop->post->title ?? 'Untitled' }}</h5>
                        <p class="text-muted small mb-2">
                            By {{ $pop->post->writer->name ?? '-' }} | 
                            {{ $pop->post->created_at->format('d M Y') }}
                        </p>
                        <p class="card-text flex-grow-1">
                            {{ Str::limit($pop->post->content, 120) }}
                        </p>
                        <a href="{{ url('/posts/'.$pop->post->slug) }}" class="btn btn-outline-primary mt-auto">Read more</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <div class="d-flex justify-content-center mt-4">
        {{ $popularPosts->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection
