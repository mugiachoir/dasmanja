@extends('layout/template')
@section('title',"$materi->judul | DA Smanja")
@section('materi',"active")
@section('konten')
<div class="detail-materi">
    <div class="materi-judul">
        <h1 data-scroll>{{$materi->judul}}</h1>
    </div>
    <main>
        <div class="materi-main">
            <img src="/img/materi/<?= $materi->gambar; ?>" alt="">
            <div class="materi-words">
                <p class="subtitle">{{$materi->updated_at}}</p>
                <h2 data-scroll>{!!$materi->quote!!}</h2>
                <div class="isi-materi">
                    {!!$materi->deskripsi!!}

                </div>
            </div>
        </div>
        <aside class="materi-side">
            <h3 data-scroll>Materi Lainnya</h3>
            <form action="{{url('/materi')}}" method="POST">
                @csrf
                <div class="searchbar">
                    <input type="text" name="keyword" class="search-input" placeholder="Cari judul">
                    <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <ul>
                <?php for ($x = 0; $x < 5; $x++) : ?>
                    <li><a href="{{url('/materi')}}/{{$daftar[$x]->id}}"><img src="/img/wosm.svg" alt="wosm">{{$daftar[$x]->judul}}</a></li>
                <?php endfor; ?>
            </ul>
        </aside>
    </main>
</div>
@endsection