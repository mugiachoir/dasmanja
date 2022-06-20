@extends('layout/admin')
@section('title',"Tambah Pengurus | DA Smanja")
@section('pengurus',"active")
@section('konten')
<div class="crud">
    <h2>Tambah Pengurus</h2>
    <div class="crud-container">
        <form action="{{url('/pengurusAdmin/store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" value="{{old('nama')}}" class="text-input @error('nama') invalid @enderror" id="nama" name="nama" placeholder="Nama" autofocus>
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="jabatan">Jabatan</label>
                <input type="text" value="{{old('jabatan')}}" class="text-input @error('jabatan') invalid @enderror" id="jabatan" name="jabatan" placeholder="Jabatan">
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="kategori">Angkatan</label>
                <div class="select-container">
                    <select class="select-input" id='kategori' name='kategori'>
                        @foreach($kategori as $ktgr)
                        @if ($ktgr == old('kategori') || $ktgr=='20-21')
                        <option value='{{$ktgr}}' selected>{{$ktgr}}</option>
                        @else
                        <option value='{{$ktgr}}'>{{$ktgr}}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
            </div>
            <br><br>
            <div class="form-group">
                <label for="fb">Facebook <i>(Jika ada)</i></label>
                <input type="text" value="{{old('fb')}}" class="text-input @error('fb') invalid @enderror" id="fb" name="fb" placeholder="Link facebook">
                @error('fb')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="ig">Instagram <i>(Jika ada)</i></label>
                <input type="text" value="{{old('ig')}}" class="text-input @error('ig') invalid @enderror" id="ig" name="ig" placeholder="Link Instagram">
                @error('ig')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="yt">Youtube <i>(Jika ada)</i></label>
                <input type="text" value="{{old('yt')}}" class="text-input @error('yt') invalid @enderror" id="yt" name="yt" placeholder="Link Youtube">
                @error('yt')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="gambar">Upload foto</label>
                <div class="file-inline">
                    <label for="gambar" class="file-button button"><i class="fas fa-upload"></i> Upload</label>
                    <label for="gambar" class="file-preview  @error('gambar') invalid @enderror">Belum ada foto</label>
                </div>
                <input type="file" class="file-input @error('gambar') invalid @enderror" name="gambar" id="gambar" onchange="previewFile()">
                @error('gambar')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
                <small>Upload File dengan ukuran maksimal 1 MB</small>
            </div>
            <button class="button" type="submit">Create</button>
        </form>
    </div>
</div>
@endsection