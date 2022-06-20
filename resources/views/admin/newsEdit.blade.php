@extends('layout/admin')
@section('title',"Edit Berita | DA Smanja")
@section('news',"active")
@section('konten')
<div class="crud">
    <h2>Ubah Berita</h2>
    <div class="crud-container">
        <form action="{{url('/newsAdmin/update')}}/{{$news->id}}" method="POST" enctype="multipart/form-data">
            @method('patch')
            @csrf
            <div class="form-group">
                <label for="judul">Judul</label>
                <input type="text" value="{{(old('judul'))?old('judul'):$news->judul}}" class="text-input @error('judul') invalid @enderror" id="judul" name="judul" placeholder="Judul" autofocus>
                @error('judul')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanggal">Tanggal</label>
                <input type="date" value="{{(old('tanggal'))?old('tanggal'):$news->tanggal}}" class="text-input @error('tanggal') invalid @enderror" id="tanggal" name="tanggal" placeholder="Pembuat">
                @error('tanggal')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="preview">Preview</label>
                <textarea name="preview" id="preview" rows="20" class="text-input @error('preview') invalid @enderror" placeholder="preview berita">{!!(old('preview'))?old('preview'):$news->preview!!}</textarea>
                @error('preview')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="isi">Isi</label>
                <textarea name="isi" id="isi" rows="30" class="text-input @error('isi') invalid @enderror" placeholder="isi berita">{{(old('isi'))?old('isi'):$news->isi}}</textarea>
                @error('isi')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="gambar">Upload Gambar</label>
                <div class="file-inline">
                    <label for="gambar" class="file-button button"><i class="fas fa-upload"></i> Upload</label>
                    <label for="gambar" class="file-preview  @error('gambar') invalid @enderror">{{$news->gambar}}</label>
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
<script src="{{asset('js/tinymce/js/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('js/admin.js')}}"></script>
@endsection