@extends('layout/admin')
@section('title',"Dokumen | DA Smanja")
@section('dokumen',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Dokumen</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/dokumen')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari dokumen">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/dokumen/create" class="create button">Buat Dokumen <i class="fas fa-upload"></i></a>
    </div>
    @if($dokumen->isEmpty())
    <h3>Maaf kak, sepertinya dokumen belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($dokumen as $dok)
        <div class="materi-item">
            <img src="/img/{{$dok->gambar}}" alt="{{$dok->judul}}">
            <div class="materi-item-words">
                <h4>{{$dok->judul}}</h4>
                <div class="crud-link">
                    <a href="/data_file/{{$dok->file}}" download="{{$dok->judul}}" class="button">Download</a>
                    <a href="{{url('/dokumen/edit')}}/{{$dok->id}}" class="button edit">Edit</a>
                    <form action="{{url('/dokumen')}}/{{$dok->id}}" method="POST">
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