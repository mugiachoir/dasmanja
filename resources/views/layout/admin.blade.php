<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{asset('css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/main.css')}}">
</head>

<body>
    @include('layout/navbarAdmin')
    <!-- AKHIR HEADER -->

    <!-- KONTEN UTAMA -->
    @yield('konten')
    <!-- AKHIR KONTEN UTAMA -->

    <!-- FOOTER -->
    @include('layout/footer')
    <script src="{{asset('js/main.js')}}"></script>
</body>

</html>