@extends('layout/admin')
@section('title',"Edit Dokumen | DA Smanja")
@section('dokumen',"active")
@section('konten')
<div class="crud">
    <h2>Ubah Dokumen</h2>
    <div class="crud-container">
        <form action="{{url('/dokumen/update')}}/{{$dokumen->id}}" method="POST" enctype="multipart/form-data">
            @method('patch')
            @csrf
            <div class="form-group">
                <label for="judul">Judul</label>
                <input type="text" value="{{(old('judul'))?old('judul'):$dokumen->judul}}" class="text-input @error('judul') invalid @enderror" id="judul" name="judul" placeholder="Judul" autofocus>
                @error('judul')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="author">Pembuat</label>
                <input type="text" value="{{(old('author'))?old('author'):$dokumen->author}}" class="text-input @error('author') invalid @enderror" id="author" name="author" placeholder="Pembuat">
                @error('author')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="file">Upload file</label>
                <div class="file-inline">
                    <label for="file" class="file-button button"><i class="fas fa-upload"></i> Upload</label>
                    <label for="file" class="file-preview  @error('file') invalid @enderror">{{$dokumen->file}}</label>
                </div>
                <input type="file" class="file-input @error('file') invalid @enderror" name="file" id="file" onchange="previewFile()">
                @error('file')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
                <small>Upload File dengan ukuran maksimal 2 MB</small>
            </div>
            <button class="button" type="submit">Update</button>
        </form>
    </div>
</div>
@endsection