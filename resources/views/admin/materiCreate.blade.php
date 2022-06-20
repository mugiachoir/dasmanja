@extends('layout/admin')
@section('title',"Buat Materi | DA Smanja")
@section('materi',"active")
@section('konten')
<div class="crud">
    <h2>Buat Materi</h2>
    <div class="crud-container">
        <form action="{{url('/materiAdmin/store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="judul">Judul</label>
                <input type="text" value="{{old('judul')}}" class="text-input @error('judul') invalid @enderror" id="judul" name="judul" placeholder="Judul" autofocus>
                @error('judul')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="quote">Quote</label>
                <textarea name="quote" id="quote" rows="10" class="text-input @error('quote') invalid @enderror" placeholder="Quote">{{old('quote')}}</textarea>
                @error('quote')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="deskripsi">Penjelasan</label>
                <textarea name="deskripsi" id="deskripsi" rows="30" class="text-input @error('deskripsi') invalid @enderror" placeholder="Penjelasan materi...">{{old('deskripsi')}}</textarea>
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

<script src="{{asset('js/tinymce/js/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('js/admin.js')}}"></script>
@endsection