@extends('layout/admin')
@section('title',"Galeri Admin | DA Smanja")
@section('galeri',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Album</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/galeriAdmin')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari album">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/galeriAdmin/create" class="create button">Buat Album <i class="fas fa-upload"></i></a>
    </div>
    @if($galeri->isEmpty())
    <h3>Maaf kak, sepertinya album belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($galeri as $glr)
        <div class="materi-item">
            <img src="/img/galeri/{{$glr->gambar}}" alt="{{$glr->nama}}">
            <div class="materi-item-words">
                <h4>{{$glr->nama}}</h4>
                <div class="crud-link">
                    <a href="{{url('/galeriAdmin/edit')}}/{{$glr->id}}" class="button edit">Edit</a>
                    <form action="{{url('/galeriAdmin')}}/{{$glr->id}}" method="POST">
                        @method('delete')
                        @csrf
                        <button class="button delete" onclick="return confirm('Hapus data?');">Delete</button>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection