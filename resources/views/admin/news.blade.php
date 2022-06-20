@extends('layout/admin')
@section('title',"Berita Admin | DA Smanja")
@section('news',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Berita</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/newsAdmin')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari berita">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/newsAdmin/create" class="create button">Buat Berita <i class="fas fa-upload"></i></a>
    </div>
    @if($news->isEmpty())
    <h3>Maaf kak, sepertinya berita belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($news as $new)
        <div class="materi-item">
            <img src="/img/news/{{$new->gambar}}" alt="{{$new->judul}}">
            <div class="materi-item-words">
                <h4>{{$new->judul}}</h4>
                <div class="crud-link">
                    <a href="{{url('/newsAdmin/edit')}}/{{$new->id}}" class="button edit">Edit</a>
                    <form action="{{url('/newsAdmin')}}/{{$new->id}}" method="POST">
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