@extends('layout/admin')
@section('title',"Pengurus Admin | DA Smanja")
@section('pengurus',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Pengurus</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/pengurusAdmin')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari pengurus">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <a href="/pengurusAdmin/create" class="create button">Tambah Pengurus <i class="fas fa-upload"></i></a>
    </div>
    @if($pengurus->isEmpty())
    <h3>Maaf kak, sepertinya nama tersebut belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($pengurus as $anggota)
        <div class="materi-item">
            <img src="/img/pengurus/{{$anggota->gambar}}" alt="{{$anggota->nama}}">
            <div class="materi-item-words">
                <h4>{{$anggota->nama}}</h4>
                <div class="crud-link">
                    <a href="{{url('/pengurusAdmin/edit')}}/{{$anggota->id}}" class="button edit">Edit</a>
                    <form action="{{url('/pengurusAdmin')}}/{{$anggota->id}}" method="POST">
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