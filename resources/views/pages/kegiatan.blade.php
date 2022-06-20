@extends('layout/template')
@section('title',"Daftar Materi | DA Smanja")
@section('kegiatan',"active")
@section('konten')
<div class="kegiatan">
    <h2 data-scroll>Kegiatan-Kegiatan Kami</h2>
    <div class="kegiatan-container kategori">
        <img src="/img/kegiatan/perkemahan.svg" alt="perkemahan">
        <div class="kegiatan-words">
            <h3 data-scroll>Perkemahan</h3>
            <p>Kami mengikuti berbagai kegiatan perkemahan setiap tahunnya, baik itu bersifat perlombaan, pertemuan, ataupun hiburan.</p>
            <p class="button" data-kategori="kemah">Daftar Kegiatan <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-giat kemah">
        @foreach($perkemahan as $kemah)
        <div class="kegiatan-container">
            <img src="/img/kegiatan/{{$kemah->gambar}}" alt="{{$kemah->nama}}">
            <div class="kegiatan-words">
                <h3>{{$kemah->nama}}</h3>
                <p>{{$kemah->deskripsi}}</p>
            </div>
        </div>
        @endforeach
    </div>
    <div class="kegiatan-container kategori">
        <img src="/img/kegiatan/internal.svg" alt="kegiatan internal">
        <div class="kegiatan-words">
            <h3 data-scroll>Kegiatan Internal</h3>
            <p>Seperti halnya organisasi lain, kami memiliki banyak program kerja yang dilaksanakan di Pangkalan kami sendiri.</p>
            <p class="button" data-kategori="internal">Daftar Kegiatan <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-giat internal">
        @foreach($internal as $inter)
        <div class="kegiatan-container">
            <img src="/img/kegiatan/{{$inter->gambar}}" alt="{{$inter->nama}}">
            <div class="kegiatan-words">
                <h3>{{$inter->nama}}</h3>
                <p>{{$inter->deskripsi}}</p>
            </div>
        </div>
        @endforeach
    </div>
    <div class="kegiatan-container kategori">
        <img src="/img/kegiatan/lomba.svg" alt="Perlombaan">
        <div class="kegiatan-words">
            <h3 data-scroll>Perlombaan</h3>
            <p>Selain aktif melaksanakan kegiatan kepramukaan di Pangkalan, kami juga selalu aktif pada kegiatan di luar, seperti lomba-lomba yang diselenggarakan oleh Pangkalan atau Dewan Kerja lain.</p>
            <p class="button" data-kategori="lomba">Daftar Kegiatan <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-giat lomba">
        @foreach($perlombaan as $lomba)
        <div class="kegiatan-container">
            <img src="/img/kegiatan/{{$lomba->gambar}}" alt="{{$lomba->nama}}">
            <div class="kegiatan-words">
                <h3>{{$lomba->nama}}</h3>
                <p>{{$lomba->deskripsi}}</p>
            </div>
        </div>
        @endforeach
    </div>
    <div class="kegiatan-container kategori">
        <img src="/img/kegiatan/hiburan.svg" alt="Hiburan">
        <div class="kegiatan-words">
            <h3 data-scroll>Hiburan</h3>
            <p>Karena kegiatan pramuka haruslah menarik, kami tidak hanya berfokus pada kegiatan-kegiatan formal, namun juga bermain dan liburan bersama seluruh pengurus Dewan Ambalan.</p>
            <p class="button" data-kategori="hiburan">Daftar Kegiatan <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-giat hiburan">
        @foreach($hiburan as $hibur)
        <div class="kegiatan-container">
            <img src="/img/kegiatan/{{$hibur->gambar}}" alt="{{$hibur->nama}}">
            <div class="kegiatan-words">
                <h3>{{$hibur->nama}}</h3>
                <p>{{$hibur->deskripsi}}</p>
            </div>
        </div>
        @endforeach
    </div>
</div>


@endsection