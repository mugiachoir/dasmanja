@extends('layout/admin')
@section('title',"Ubah Kegiatan | DA Smanja")
@section('kegiatan',"active")
@section('konten')
<div class="crud">
    <h2>Ubah Kegiatan</h2>
    <div class="crud-container">
        <form action="{{url('/kegiatanAdmin/update')}}/{{$kegiatan->id}}" method="POST" enctype="multipart/form-data">
            @method('patch')
            @csrf
            <div class="form-group">
                <label for="nama">Nama kegiatan</label>
                <input type="text" value="{{(old('nama'))?old('nama'):$kegiatan->nama}}" class="text-input @error('nama') invalid @enderror" id="nama" name="nama" placeholder="Nama album" autofocus>
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="kategori">Jenis kegiatan</label>
                <div class="select-container">
                    <select class="select-input" id='kategori' name='kategori'>
                        @foreach($kategori as $ktgr)
                        @if ($ktgr == old('kategori') || $ktgr==$kegiatan->kategori)
                        <option value='{{$ktgr}}' selected>{{$ktgr}}</option>
                        @else
                        <option value='{{$ktgr}}'>{{$ktgr}}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="deskripsi">Deskripsi</label>
                <textarea name="deskripsi" id="deskripsi" rows="30" class="text-input @error('deskripsi') invalid @enderror" placeholder="Deskripsi kegiatan">{{(old('deskripsi'))?old('deskripsi'):$kegiatan->deskripsi}}</textarea>
                @error('deskripsi')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="gambar">Upload Gambar</label>
                <div class="file-inline">
                    <label for="gambar" class="file-button button"><i class="fas fa-upload"></i> Upload</label>
                    <label for="gambar" class="file-preview  @error('gambar') invalid @enderror">{{$kegiatan->gambar}}</label>
                </div>
                <input type="file" class="file-input @error('gambar') invalid @enderror" name="gambar" id="gambar" onchange="previewFile()">
                @error('gambar')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
                <small>Upload File dengan ukuran maksimal 1 MB</small>
            </div>
            <button class="button" type="submit">Update</button>
        </form>
    </div>
</div>
@endsection