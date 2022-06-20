@extends('layout/template')
@section('title',"Home | DA Smanja")
@section('meta-desc',"Berbagai kegiatan kepramukaan, materi-materi pramuka, bahkan berita-berita terbaru seputar SMAN 1 Jalancagak dan sekitarnya dapat diakses disini")
@section('konten')

<header class="hero home">
    <div class="hero-words">
        <div class="hero-subtitle">
            <h4>Pramuka SMAN 1 Jalancagak
            </h4>
            <div class="line">
                <hr>
            </div>
        </div>
        <h1 data-scroll>Berkembang bersama menjadi manusia paripurna</h1>
        <div class="hero-link">
            <a href="/materi" class="button">Materi</a>
            <a href="/registration/form" class="button">Daftar</a>
        </div>
    </div>
</header>
<section class="video">
    <h2 data-scroll>Penasaran tentang kami?</h2>
    <div class="container-video">
        <iframe width="100%" src="https://www.youtube.com/embed/et7ttmjz5g4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <div class="video-words">
            <h3>Pramuka SMAN 1 Jalancagak</h3>
            <p>Pramuka di SMAN 1 Jalancagak merupakan para pemuda yang memiliki skill, semangat serta dedikasi tinggi, dan yang paling utama senantiasa memberikan manfaat baik itu di lingkungan sekolah maupun masyarakat </p>
            <div class="medsos">
                <a href="https://instagram.com/da_smanja" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="https://www.youtube.com/channel/UCWSy1rgbKlYKB6_g1y3A01A" target="_blank"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </div>
</section>
<section class="materi-home">
    <h2 data-scroll>Materi Terbaru</h2>
    <div class="materi-container">
        @if($materi->count()< 6) <h3>Maaf kak, sepertinya materi belum ada</h3>
            @else
            <?php for ($x = 0; $x < 6; $x++) : ?>
                <div class="materi-item">
                    <img src="/img/materi/{{$materi[$x]->gambar}}" alt="{{$materi[$x]->judul}}">
                    <div class="materi-item-words">
                        <h4>{{$materi[$x]->judul}}</h4>
                        <a href="{{url('/materi')}}/{{$materi[$x]->id}}" class="button">Pelajari</a>
                    </div>
                </div>
            <?php endfor; ?>
            @endif
    </div>
</section>
<section class="prestasi">
    <h2 data-scroll>Beberapa Prestasi Kami</h2>
    <p class="subtitle">Kualitas pendidikan dan pelatihan yang telah terjamin dengan berbagai prestasi</p>
    <div class="prestasi-container">
        <div class="gambar-prestasi">
            <img src="/img/gss.jpg" alt="GSS XIII Tahun 2017">
            <h1 data-scroll>Nasional</h1>
        </div>
        <div class="prestasi-words">
            <h3>GSS XIII Tahun 2017</h3>
            <p>Pada tahun 2017 kami mengirimkan perwakilan satu sangga putra untuk berkompetisi di kegiatan GSS XIII tingkat Nasional yang diselenggarakan di Sumedang</p>
            <ul>
                <li>Juara 2 Ragam Sandi</li>
                <li>Harapan 2 Madya Lomba Jelajah Kota</li>
            </ul>
        </div>
    </div>
    <div class="prestasi-container">
        <div class="gambar-prestasi">
            <img src="/img/lkp.jpg" alt="LKP XI STKIP Sebelas April Sumedang 2018">
            <h1 data-scroll>Nasional</h1>
        </div>
        <div class="prestasi-words">
            <h3>LKP XI STKIP Sebelas April Sumedang 2018</h3>
            <p>Dalam kegiatan ini kami mengirimkan perwakilan 1 sangga putra dan 1 sangga putri, pada cabang perlombaan Lomba Jelajah Kota tingkat Nasional</p>
            <ul>
                <li>Juara Harapan 1 Lomba Jelajah Kota putri</li>
            </ul>
        </div>
    </div>
    <div class="prestasi-container">
        <div class="gambar-prestasi">
            <img src="/img/fu2p.jpg" alt="Festival FU2P UPI Purwakarta 2017">
            <h1 data-scroll>Provinsi</h1>
        </div>
        <div class="prestasi-words">
            <h3>Festival FU2P UPI Purwakarta 2017</h3>
            <p>Dalam perlombaan yang digelar di UPI Purwakarta ini, kami mengirimkan beberapa tim untuk berbagai cabang perlombaan</p>
            <ul>
                <li>Juara Pioneering Terkreatif</li>
                <li>Juara 2 Lomba Kreasi Baris-berbaris</li>
                <li>Juara 3 Tari Komando</li>
                <li>Juara Pangkalan Terfavorit</li>
                <li>Juara Umum Harapan 3</li>
            </ul>
        </div>
    </div>
</section>
<section class="news" id="news">
    <h2 data-scroll>Setiap Pramuka Adalah Kantor Berita</h2>
    @if($news->count()< 3) <div>
        <h4 class="alert alert-danger">Maaf kak, sepertinya belum ada berita</h4>
        </div>
        @else
        <div class="glide">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <?php for ($x = 0; $x < 3; $x++) : ?>
                        <li class="glide__slide">
                            <div class="news-item">
                                <img class="modal-detail-button" data-id="{{$news[$x]->id}}" src="img/news/{{$news[$x]->gambar}}" alt="{{$news[$x]->judul}}">
                                <div class="news-words">
                                    <p class="subtitle">{{$news[$x]->tanggal}}</p>
                                    <h3>{{$news[$x]->judul}}</h3>
                                    <p>{!!$news[$x]->preview!!}</p>
                                    <p class="button modal-detail-button" data-id="{{$news[$x]->id}}">Selengkapnya</p>
                                </div>
                            </div>
                        </li>
                    <?php endfor; ?>
                </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
                <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                    <i class="fa fa-chevron-left"></i>
                </button>
                <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                    <i class="fa fa-chevron-right"></i>
                </button>
            </div>
        </div>
        @endif
        <div class="modal container">

        </div>
</section>
<script src="{{asset('js/glide.min.js')}}"></script>

@endsection