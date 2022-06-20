@extends('layout/template')
@section('title',"Daftar Pengurus | DA Smanja")
@section('pengurus',"active")
@section('konten')
<div class="pengurus">
    <h2>Keluarga Besar DA Smanja</h2>
    <div class="kategori">
        <img src="/img/pengurus/ang15.jpg" alt="Angkatan 15-16">
        <div class="kategori-words">
            <h3 data-scroll>Angkatan 2015-2016</h3>
            <p class="button" data-kategori="15-16">Daftar Pengurus <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-pengurus 15-16">
        <div class="daftar-container">
            @foreach($angkatan15 as $ang15)
            <div class="pengurus-container">
                <img src="/img/pengurus/{{$ang15->gambar}}" alt="{{$ang15->nama}}">
                <div class="pengurus-words">
                    <h4>{{$ang15->nama}}</h4>
                    <p>{{$ang15->jabatan}}</p>
                    <div class="pengurus-medsos">
                        <?php if ($ang15->fb !== null) : ?>
                            <a href="{{$ang15->fb}}" target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <?php endif; ?>
                        <?php if ($ang15->ig !== null) : ?>
                            <a href="{{$ang15->ig}}" target="_blank"><i class="fab fa-instagram"></i></a>
                        <?php endif; ?>
                        <?php if ($ang15->yt !== null) : ?>
                            <a href="{{$ang15->yt}}" target="_blank"><i class="fab fa-youtube"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="kategori">
        <img src="/img/pengurus/ang16.jpg" alt="Angkatan 16-17">
        <div class="kategori-words">
            <h3 data-scroll>Angkatan 2016-2017</h3>
            <p class="button" data-kategori="16-17">Daftar Pengurus <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-pengurus 16-17">
        <div class="daftar-container">
            @foreach($angkatan16 as $ang16)
            <div class="pengurus-container">
                <img src="/img/pengurus/{{$ang16->gambar}}" alt="{{$ang16->nama}}">
                <div class="pengurus-words">
                    <h4>{{$ang16->nama}}</h4>
                    <p>{{$ang16->jabatan}}</p>
                    <div class="pengurus-medsos">
                        <?php if ($ang16->fb !== null) : ?>
                            <a href="{{$ang16->fb}}" target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <?php endif; ?>
                        <?php if ($ang16->ig !== null) : ?>
                            <a href="{{$ang16->ig}}" target="_blank"><i class="fab fa-instagram"></i></a>
                        <?php endif; ?>
                        <?php if ($ang16->yt !== null) : ?>
                            <a href="{{$ang16->yt}}" target="_blank"><i class="fab fa-youtube"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="kategori">
        <img src="/img/pengurus/ang17.jpg" alt="Angkatan 17-18">
        <div class="kategori-words">
            <h3 data-scroll>Angkatan 2017-2018</h3>
            <p class="button" data-kategori="17-18">Daftar Pengurus <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-pengurus 17-18">
        <div class="daftar-container">
            @foreach($angkatan17 as $ang17)
            <div class="pengurus-container">
                <img src="/img/pengurus/{{$ang17->gambar}}" alt="{{$ang17->nama}}">
                <div class="pengurus-words">
                    <h4>{{$ang17->nama}}</h4>
                    <p>{{$ang17->jabatan}}</p>
                    <div class="pengurus-medsos">
                        <?php if ($ang17->fb !== null) : ?>
                            <a href="{{$ang17->fb}}" target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <?php endif; ?>
                        <?php if ($ang17->ig !== null) : ?>
                            <a href="{{$ang17->ig}}" target="_blank"><i class="fab fa-instagram"></i></a>
                        <?php endif; ?>
                        <?php if ($ang17->yt !== null) : ?>
                            <a href="{{$ang17->yt}}" target="_blank"><i class="fab fa-youtube"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="kategori">
        <img src="/img/pengurus/ang18.jpg" alt="Angkatan 18-19">
        <div class="kategori-words">
            <h3 data-scroll>Angkatan 2018-2019</h3>
            <p class="button" data-kategori="18-19">Daftar Pengurus <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-pengurus 18-19">
        <div class="daftar-container">
            @foreach($angkatan18 as $ang18)
            <div class="pengurus-container">
                <img src="/img/pengurus/{{$ang18->gambar}}" alt="{{$ang18->nama}}">
                <div class="pengurus-words">
                    <h4>{{$ang18->nama}}</h4>
                    <p>{{$ang18->jabatan}}</p>
                    <div class="pengurus-medsos">
                        <?php if ($ang18->fb !== null) : ?>
                            <a href="{{$ang18->fb}}" target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <?php endif; ?>
                        <?php if ($ang18->ig !== null) : ?>
                            <a href="{{$ang18->ig}}" target="_blank"><i class="fab fa-instagram"></i></a>
                        <?php endif; ?>
                        <?php if ($ang18->yt !== null) : ?>
                            <a href="{{$ang18->yt}}" target="_blank"><i class="fab fa-youtube"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="kategori">
        <img src="/img/pengurus/ang19.jpg" alt="Angkatan 19-20">
        <div class="kategori-words">
            <h3 data-scroll>Angkatan 2019-2020</h3>
            <p class="button" data-kategori="19-20">Daftar Pengurus <i class="fa fa-chevron-down"></i></p>
        </div>
    </div>
    <div class="daftar-pengurus 19-20">
        <div class="daftar-container">
            @foreach($angkatan19 as $ang19)
            <div class="pengurus-container">
                <img src="/img/pengurus/{{$ang19->gambar}}" alt="{{$ang19->nama}}">
                <div class="pengurus-words">
                    <h4>{{$ang19->nama}}</h4>
                    <p>{{$ang19->jabatan}}</p>
                    <div class="pengurus-medsos">
                        <?php if ($ang19->fb !== null) : ?>
                            <a href="{{$ang19->fb}}" target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <?php endif; ?>
                        <?php if ($ang19->ig !== null) : ?>
                            <a href="{{$ang19->ig}}" target="_blank"><i class="fab fa-instagram"></i></a>
                        <?php endif; ?>
                        <?php if ($ang19->yt !== null) : ?>
                            <a href="{{$ang19->yt}}" target="_blank"><i class="fab fa-youtube"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>


@endsection