@extends('layout/template')
@section('title',"Welcome Message | DA Smanja")
@section('konten')
<div class="welcome-message">
    <div class="welcome-words">
        <h1>Hallo kak <i>{{$anggota->nama}}</i></h1>
        <h3>Selamat datang di Dewan Ambalan SMAN 1 Jalancagak</h3>
        <p>Pendaftaran anda telah berhasil, informasi untuk tahap selanjutnya akan kami kirimkan ke nomor <strong>{{$anggota->whatsapp}}</strong> yang telah kakak daftarkan, mohon ditunggu ya, terimakasih!</p>
        <a href="/" class="button">Kembali</a>
    </div>
</div>
@endsection