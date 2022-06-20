@extends('layout/admin')
@section('title',"Kegiatan Admin | DA Smanja")
@section('kegiatan',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Kegiatan</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/kegiatanAdmin')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari kegiatan">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/kegiatanAdmin/create" class="create button">Buat Kegiatan <i class="fas fa-upload"></i></a>
    </div>
    @if($kegiatan->isEmpty())
    <h3>Maaf kak, sepertinya kegiatan belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($kegiatan as $giat)
        <div class="materi-item">
            <img src="/img/kegiatan/{{$giat->gambar}}" alt="{{$giat->nama}}">
            <div class="materi-item-words">
                <h4>{{$giat->nama}}</h4>
                <div class="crud-link">
                    <a href="{{url('/kegiatanAdmin/edit')}}/{{$giat->id}}" class="button edit">Edit</a>
                    <form action="{{url('/kegiatanAdmin')}}/{{$giat->id}}" method="POST">
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