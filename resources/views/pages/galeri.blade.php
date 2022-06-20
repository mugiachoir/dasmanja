@extends('layout/template')
@section('title',"Galeri | DA Smanja")
@section('galeri',"active")
@section('konten')
<div class="materi-home index">
    <h2 data-scroll>Daftar Album</h2>
    <form action="{{url('/galeri')}}" method="POST">
        @csrf
        <div class="searchbar">
            <input type="text" name="keyword" class="search-input" placeholder="Cari album">
            <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
        </div>
    </form>
    @if($galeri->isEmpty())
    <h3>Maaf kak, sepertinya album belum dibuat</h3>
    @endif
    <div class="materi-container">
        @foreach($galeri as $glr)
        <div class="materi-item">
            <img src="/img/galeri/{{$glr->gambar}}" alt="{{$glr->nama}}">
            <div class="materi-item-words">
                <h4>{{$glr->nama}}</h4>
                <a href="{{$glr->link}}" class="button">Drive <i class="fab fa-google-drive"></i></a>
            </div>
        </div>
        @endforeach
    </div>
</div>


@endsection