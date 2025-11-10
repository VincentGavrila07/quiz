@extends('layouts.app')

@section('title', $writer->name . ' - Writers')

@section('content')

<div class="container py-4">
    <a href="{{ route('writers.index') }}" class="text-decoration-none mb-3 d-inline-block">← Back to Writers</a>

    <div class="row">
        <div class="col-lg-4">
            <div class="card shadow-sm mb-4">
                <div class="card-body text-center">
                    @if($writer->photo)
                        <img src="{{ $writer->photo }}" alt="{{ $writer->name }}" class="rounded-circle mb-3" style="width:120px;height:120px;object-fit:cover;">
                    @else
                        <div class="rounded-circle bg-secondary mb-3" style="width:120px;height:120px;line-height:120px;color:white;font-weight:600;">
                            {{ strtoupper(substr($writer->name,0,1)) }}
                        </div>
                    @endif

                    <h4 class="fw-bold mb-1">{{ $writer->name }}</h4>
                    <p class="text-muted small mb-2">{{ $writer->posts->count() }} posts</p>
                    <p class="text-muted small">{{ Str::limit($writer->bio ?? 'No bio available', 160) }}</p>
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <h6 class="card-title">Recent posts</h6>
                    <ul class="list-unstyled mb-0">
                        @foreach($writer->posts->sortByDesc('created_at')->take(5) as $p)
                            <li class="mb-2">
                                <a href="{{ route('posts.show', $p->slug) }}" class="text-decoration-none">
                                    {{ Str::limit($p->title, 60) }}
                                </a>
                                <div class="text-muted small">{{ $p->created_at->format('d M Y') }}</div>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <h3 class="mb-3">All posts by {{ $writer->name }}</h3>

            @if($writer->posts->count())
                <div class="row">
                    @foreach($writer->posts->sortByDesc('created_at') as $post)
                        <div class="col-md-6 mb-4">
                            <div class="card h-100 shadow-sm">
                                @if($post->image)
                                    <img src="{{ $post->image }}" class="card-img-top" alt="{{ $post->title }}">
                                @else
                                    <img src="https://picsum.photos/600/350?random={{ $post->id }}" class="card-img-top" alt="{{ $post->title }}">
                                @endif
                                <div class="card-body d-flex flex-column">
                                    <h5 class="card-title">{{ $post->title }}</h5>
                                    <p class="text-muted small mb-2">{{ $post->category->name ?? '-' }} • {{ $post->created_at->format('d M Y') }}</p>
                                    <p class="card-text mb-3">{{ Str::limit($post->excerpt ?? $post->body, 100) }}</p>
                                    <div class="mt-auto">
                                        <a href="{{ route('posts.show', $post->slug) }}" class="btn btn-primary btn-sm">Read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="alert alert-info">Belum ada postingan untuk penulis ini.</div>
            @endif
        </div>
    </div>
</div>
@endsection
