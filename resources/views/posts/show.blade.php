@extends('layouts.app')

@section('title', $post->title . ' - EduFun')

@section('content')


<div class="container py-4">
    <a href="{{ url()->previous() }}" class="text-decoration-none mb-3 d-inline-block">← Kembali</a>

    <div class="row">
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm">
                @if($post->image)
                    <img src="{{ $post->image }}" class="card-img-top" alt="{{ $post->title }}">
                @endif

                <div class="card-body">
                    <h1 class="fw-bold">{{ $post->title }}</h1>
                    <p class="text-muted mb-2">
                        By <strong>{{ $post->writer->name ?? '-' }}</strong> • {{ $post->category->name ?? '-' }} • {{ $post->created_at->format('d M Y') }}
                    </p>

                    <hr>

                    {{-- tampilkan body aman: escape dan ubah newline ke <br> --}}
                    <div class="post-body" style="line-height:1.7;">
                        {!! nl2br(e($post->body)) !!}
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="mb-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h6 class="card-title">About the writer</h6>
                        <p class="mb-1"><strong>{{ $post->writer->name ?? '-' }}</strong></p>
                        <p class="text-muted small">{{ Str::limit($post->writer->bio ?? 'No bio', 120) }}</p>
                        {{-- bisa tambahkan link ke writer page --}}
                        @if(isset($post->writer->id))
                        <a href="{{ route('writers.show', $post->writer->id) }}" class="text-decoration-none small">View all posts by writer →</a>
                        @endif
                    </div>
                </div>
            </div>

            <div>
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h6 class="card-title">Category</h6>
                        <a href="{{ route('categories.show', $post->category->slug) }}" class="text-decoration-none">
                            {{ $post->category->name }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
