<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'EduFun')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .navbar {
            background-color: #ffffff !important;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        }

        .navbar-brand img {
            height: 45px;
            width: auto;
        }

        .navbar-nav .nav-link {
            color: #222;
            font-weight: 600;
            margin: 0 8px;
            transition: all 0.2s ease;
        }

        .navbar-nav .nav-link:hover {
            color: #1d4ed8; 
        }
        .navbar-nav .nav-link.active {
            color: #1d4ed8;
            position: relative;
        }
        .navbar-nav .nav-link.active::after {
            content: "";
            position: absolute;
            left: 10%;
            right: 10%;
            bottom: -4px;
            height: 3px;
            background-color: #1d4ed8;
            border-radius: 2px;
        }
        footer {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="{{ url('/') }}">
                <p>EduFun</p>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-center">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item"href="{{ url('categories/interactive-multimedia') }}">Interactive Multimedia</a></li>
                            <li><a class="dropdown-item" href="{{ url('categories/software-engineering') }}">Sofware Engineering </a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('writers*') ? 'active' : '' }}" href="{{ url('/writers') }}">Writers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('about') ? 'active' : '' }}" href="{{ url('/about') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('popular') ? 'active' : '' }}" href="{{ url('/popular') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    {{-- Main content --}}
    <div class="container py-5">
        @yield('content')
    </div>

    {{-- Footer --}}
    <footer class="text-center mt-5 mb-3 text-muted">
        © 2025 EduFun | Web Programming | Vincent Gavrila Aprilliano | 2702269646
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
