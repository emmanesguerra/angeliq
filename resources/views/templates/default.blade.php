@extends('layouts.app')

@section('ae-css')
@if (!empty($css) && count($css) > 0)
@foreach ($css as $style)
<link href="{{ asset('css/templates/' . $style) }}" rel="stylesheet">
@endforeach
@endif
@endsection

@section('content')
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 logo">
                    <span class="main">
                        angeliq
                    </span>
                    <span class="sub">
                        Cakes, Breads & Butters
                    </span>                
                </div>
                <div class="col-sm-8"> 
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Cakes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Breads</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Butters</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="section">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="tinyMce">
                            {!! $Main !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <div class="section">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3 pr-0">
                                {!! $FooterSection1Image !!}
                            </div>
                            <div class="col-sm-9">
                                {!! $FooterSection1 !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="images/b.png" width="100%"  style="border: 1px solid #fafafa; 
                                     border-radius: 50%; background: #fafafa;">
                            </div>
                            <div class="col-sm-9">
                                {!! $FooterContact !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3" style="color: #fff">© 2018 Copyright:
                <a href="#" style="color: #fff; text-decoration: underline">AE Services</a>. All rights reserved.
            </div>
            <!-- Copyright -->
        </div>
    </footer>
</body>
@endsection

@section('ae-scripts')
@if (!empty($js) && count($js) > 0)
@foreach ($js as $scripts)
<script src="{{ asset('js/templates/' . $scripts) }}"></script>
@endforeach
@endif
@endsection