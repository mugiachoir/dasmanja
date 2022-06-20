<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="@yield('meta-desc')">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{asset('css/glide.core.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/glide.theme.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/main.css')}}">
    <link rel="icon" type="image/png" href="/img/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="/img/favicon-16x16.png" sizes="16x16" />
</head>

<body>
    @include('layout/navbar')
    <!-- AKHIR HEADER -->

    <!-- KONTEN UTAMA -->
    @yield('konten')
    <!-- AKHIR KONTEN UTAMA -->

    <!-- FOOTER -->
    @include('layout/footer')
    <script src="{{asset('js/scroll-out.min.js')}}"></script>
    <script src="{{asset('js/main.js')}}"></script>
</body>

</html>