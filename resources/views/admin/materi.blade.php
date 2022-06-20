@extends('layout/admin')
@section('title',"Materi Admin | DA Smanja")
@section('materi',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Materi</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/materi')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari materi">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/materiAdmin/create" class="create button">Buat Materi <i class="fas fa-upload"></i></a>
    </div>
    @if($materi->isEmpty())
    <h3>Maaf kak, sepertinya materi belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($materi as $mtr)
        <div class="materi-item">
            <img src="/img/materi/{{$mtr->gambar}}" alt="{{$mtr->judul}}">
            <div class="materi-item-words">
                <h4>{{$mtr->judul}}</h4>
                <div class="crud-link">
                    <a href="{{url('/materiAdmin/edit')}}/{{$mtr->id}}" class="button edit">Edit</a>
                    <form action="{{url('/materiAdmin')}}/{{$mtr->id}}" method="POST">
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