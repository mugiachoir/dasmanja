<nav>
    <div class="logo">
        <a href="{{url('/')}}">
            <img src="/img/logo-serif.svg" alt="logo" class="gambar-logo">
        </a>
    </div>
    <ul>
        <li><a href="{{url('/materi')}}" class="@yield('materi')">Materi</a></li>
        <li><a href="{{url('/kegiatan')}}" class="@yield('kegiatan')">Kegiatan</a></li>
        <li><a href="{{url('/galeri')}}" class="@yield('galeri')">Galeri</a></li>
        <li><a href="{{url('/pengurus')}}" class="@yield('pengurus')">Pengurus</a></li>
        <li><a href="{{url('/about')}}" class="@yield('about')">About</a></li>
        <li><a href="{{url('/login')}}" class="@yield('login') login-nav">Login</a></li>
    </ul>
    <div class="menu-toggle">
        <span></span>
        <span></span>
        <span></span>
    </div>
</nav>