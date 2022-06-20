@extends('layout/admin')
@section('title',"Buat Album | DA Smanja")
@section('galeri',"active")
@section('konten')
<div class="crud">
    <h2>Buat Album</h2>
    <div class="crud-container">
        <form action="{{url('/galeriAdmin/store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="nama">Nama album</label>
                <input type="text" value="{{old('nama')}}" class="text-input @error('nama') invalid @enderror" id="nama" name="nama" placeholder="Nama album" autofocus>
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="link">Link google drive</label>
                <input type="text" value="{{old('link')}}" class="text-input @error('link') invalid @enderror" id="link" name="link" placeholder="Link google drive">
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
                    <label for="gambar" class="file-preview  @error('gambar') invalid @enderror">Belum ada gambar</label>
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