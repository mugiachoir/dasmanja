@extends('layout/admin')
@section('title',"Ubah Album | DA Smanja")
@section('galeri',"active")
@section('konten')
<div class="crud">
    <h2>Ubah Album</h2>
    <div class="crud-container">
        <form action="{{url('/galeriAdmin/update')}}/{{$galeri->id}}" method="POST" enctype="multipart/form-data">
            @method('patch')
            @csrf
            <div class="form-group">
                <label for="nama">Nama album</label>
                <input type="text" value="{{(old('nama'))?old('nama'):$galeri->nama}}" class="text-input @error('nama') invalid @enderror" id="nama" name="nama" placeholder="Nama album" autofocus>
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="link">Link google drive</label>
                <input type="text" value="{{(old('link'))?old('link'):$galeri->link}}" class="text-input @error('link') invalid @enderror" id="link" name="link" placeholder="Link google drive">
                @error('link')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="gambar">Upload Gambar</label>
                <div class="file-inline">
                    <label for="gambar" class="file-button button"><i class="fas fa-upload"></i> Upload</label>
                    <label for="gambar" class="file-preview  @error('gambar') invalid @enderror">{{$galeri->gambar}}</label>
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