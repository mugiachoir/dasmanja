@extends('layout/admin')
@section('title',"Dashboard | DA Smanja")
@section('materi',"active")
@section('konten')
<div class="dashboard">
    <h2>Welcome {{$user->username}}</h2>
    <div class="dashboard-container">
        <a href="/dokumen"><i class="fas fa-file-alt"></i></a>
        <a href="/materiAdmin"><i class="fas fa-book-reader"></i></a>
        <a href="/newsAdmin"><i class="fas fa-newspaper"></i></a>
        <a href="/registration"><i class="fas fa-user-plus"></i></a>
        <a href="/galeriAdmin"><i class="fas fa-images icon"></i></a>
        <a href="/pengurusAdmin"><i class="fas fa-users"></i></a>
        <a href="/kegiatanAdmin"><i class="fas fa-hiking"></i></a>
    </div>
</div>
@endsection