@extends('layout/template')
@section('title',"Daftar Materi | DA Smanja")
@section('meta-desc',"Materi-materi kepramukaan yang disajikan dengan cara yang modern, menyenangkan, dan mudah dipahami")
@section('materi',"active")
@section('konten')
<div class="materi-home index">
    <h2 data-scroll>Daftar Materi</h2>
    <form action="{{url('/materi')}}" method="POST">
        @csrf
        <div class="searchbar">
            <input type="text" name="keyword" class="search-input" placeholder="Cari judul">
            <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
        </div>
    </form>
    @if($materi->isEmpty())
    <h3>Maaf kak, sepertinya materi belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($materi as $mtr)
        <div class="materi-item">
            <img src="/img/materi/{{$mtr->gambar}}" alt="{{$mtr->judul}}">
            <div class="materi-item-words">
                <h4>{{$mtr->judul}}</h4>
                <a href="{{url('/materi')}}/{{$mtr->id}}" class="button">Pelajari</a>
            </div>
        </div>
        @endforeach
    </div>
</div>


@endsection