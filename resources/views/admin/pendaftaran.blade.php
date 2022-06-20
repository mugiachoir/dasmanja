@extends('layout/admin')
@section('title',"Anggota Baru | DA Smanja")
@section('pendaftar',"active")
@section('konten')
<div class="materi-home index">
    <h2>Daftar Anggota Baru</h2>
    @if(session('status'))
    <?= session('status'); ?>
    @endif
    <div class="crud-head">
        <form action="{{url('/registration')}}" method="POST">
            @csrf
            <div class="searchbar">
                <input type="text" name="keyword" class="search-input" placeholder="Cari anggota">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <p class="jumlah-anggota"><span><i class="fas fa-mars"></i> : {{$jumlahLaki}}</span><span><i class="fas fa-venus"></i> : {{$jumlahPerem}}</span><span><i class="fas fa-users"></i> : {{$total}}</span></p>
    </div>
    @if($pendaftar->isEmpty())
    <h3>Maaf kak, sepertinya nama tersebut belum ada</h3>
    @endif
    <div class="materi-container">
        @foreach($pendaftar as $anggota)
        <div class="materi-item">
            <img src="/img/pendaftar/{{$anggota->gambar}}" alt="{{$anggota->nama}}">
            <div class="materi-item-words">
                <h4>{{$anggota->nama}}</h4>
                <div class="crud-link">
                    <a href="https://wa.me/{{$anggota->whatsapp}}" class="button">Hubungi</a>
                    <!-- <a href="{{url('/registration/edit')}}/{{$anggota->id}}" class="button edit">Edit</a> -->
                    <form action="{{url('/registration')}}/{{$anggota->id}}" method="POST">
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