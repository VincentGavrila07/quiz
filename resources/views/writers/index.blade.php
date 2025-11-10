@extends('layouts.app')

@section('title', 'Writers - EduFun')

@section('content')

<div class="container py-4">
    <div class="row mb-4 align-items-center">
        <div class="col-md-8">
            <h2 class="fw-bold">Writers</h2>
            <p class="text-muted mb-0">Meet the authors behind EduFun articles.</p>
        </div>
        <div class="col-md-4 text-md-end">
            <form class="d-flex" method="GET" action="{{ route('writers.index') }}">
                <input name="q" value="{{ request('q') }}" class="form-control form-control-sm me-2" type="search" placeholder="Search writers">
                <button class="btn btn-outline-primary btn-sm" type="submit">Search</button>
            </form>
        </div>
    </div>

    @if($writers->count())
        <div class="row">
            @foreach($writers as $writer)
                <div class="col-md-4 mb-4">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body d-flex">
                            <div class="me-3">
                                @if($writer->photo)
                                    <img src="{{ $writer->photo }}" alt="{{ $writer->name }}" class="rounded-circle" style="width:72px;height:72px;object-fit:cover;">
                                @else
                                    <div class="rounded-circle bg-secondary text-white d-flex align-items-center justify-content-center" style="width:72px;height:72px;font-weight:700;">
                                        {{ strtoupper(substr($writer->name,0,1)) }}
                                    </div>
                                @endif
                            </div>

                            <div class="flex-grow-1">
                                <h5 class="mb-1">{{ $writer->name }}</h5>
                                <p class="text-muted small mb-2">{{ Str::limit($writer->bio ?? 'No bio available', 100) }}</p>
                                <div class="d-flex justify-content-between align-items-center mt-auto">
                                    <small class="text-muted">{{ $writer->posts_count ?? $writer->posts->count() }} posts</small>
                                    <a href="{{ route('writers.show', $writer->id) }}" class="btn btn-sm btn-primary">View posts</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        @if(method_exists($writers, 'links'))
            <div class="d-flex justify-content-center mt-3">
                {{ $writers->links('pagination::bootstrap-5') }}
            </div>
        @endif
    @else
        <div class="alert alert-info">Belum ada writer tersedia.</div>
    @endif
</div>
@endsection
