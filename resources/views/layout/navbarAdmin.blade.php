<nav>
    <div class="logo">
        <a href="{{url('/')}}">
            <img src="/img/logo-serif.svg" alt="logo" class="gambar-logo">
        </a>
    </div>
    <ul class="admin-nav">
        <li><a href="{{url('/dokumen')}}" class="@yield('dokumen')">Dokumen</a></li>
        <li><a href="{{url('/materiAdmin')}}" class="@yield('materi')">Materi</a></li>
        <li><a href="{{url('/newsAdmin')}}" class="@yield('news')">Berita</a></li>
        <li><a href="{{url('/registration')}}" class="@yield('pendaftar')">Pendaftar</a></li>
        <li><a href="{{url('/galeriAdmin')}}" class="@yield('galeri')">Galeri</a></li>
        <li><a href="{{url('/pengurusAdmin')}}" class="@yield('pengurus')">Pengurus</a></li>
        <li><a href="{{url('/kegiatanAdmin')}}" class="@yield('kegiatan')">Kegiatan</a></li>
        <li><a href="{{url('/logout')}}" class="login-nav">Logout</a></li>
    </ul>
    <div class="menu-toggle">
        <span></span>
        <span></span>
        <span></span>
    </div>
</nav>