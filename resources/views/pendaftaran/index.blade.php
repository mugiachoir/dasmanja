@extends('layout/template')
@section('title',"Pendaftaran | DA Smanja")
@section('konten')
<div class="crud">
    <h2>Formulir Pendaftaran</h2>
    <div class="crud-container">
        <form action="{{url('/registration/store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" value="{{old('nama')}}" class="text-input @error('nama') invalid @enderror" id="nama" name="nama" placeholder="Nama anda" autofocus>
                @error('nama')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="tanggal_lahir">Tanggal lahir</label>
                <input type="date" value="{{old('tanggal_lahir')}}" class="text-input @error('tanggal_lahir') invalid @enderror" id="tanggal_lahir" name="tanggal_lahir" placeholder="tanggal_lahir anda">
                @error('tanggal_lahir')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="kelamin">Jenis kelamin</label>
                <div class="form-inline">
                    @foreach($kelamin as $klmn)
                    @if($klmn==old('kelamin')||$klmn=='laki-laki')
                    <div class="radio-group">
                        <input type="radio" name="kelamin" value="{{$klmn}}" class="radio-input" checked>
                        <label>{{$klmn}}</label>
                    </div>
                    @else
                    <div class="radio-group">
                        <input type="radio" name="kelamin" value="{{$klmn}}" class="radio-input">
                        <label>{{$klmn}}</label>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
            <div class="form-group">
                <label for="alamat">Alamat</label>
                <input type="text" value="{{old('alamat')}}" class="text-input @error('alamat') invalid @enderror" id="alamat" name="alamat" placeholder="Alamat anda">
                @error('alamat')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="whatsapp">No HP/Whatsapp</label>
                <input type="text" value="{{old('whatsapp')}}" class="text-input @error('whatsapp') invalid @enderror" id="whatsapp" name="whatsapp" placeholder="62xxxxxxxxxxx">
                @error('whatsapp')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
                <small>Ganti 0 pertama dengan 62</small>
            </div>
            <br><br>
            <div class="form-group">
                <label for="sekolah_asal">Sekolah asal</label>
                <input type="text" value="{{old('sekolah_asal')}}" class="text-input @error('sekolah_asal') invalid @enderror" id="sekolah_asal" name="sekolah_asal" placeholder="Nama sekolah asal">
                @error('sekolah_asal')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="alasan">Alasan mendaftar</label>
                <textarea name="alasan" id="alasan" rows="20" class="text-input @error('alasan') invalid @enderror" placeholder="Alasan mendaftar">{{old('alasan')}}</textarea>
                @error('alasan')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="gambar">Upload Foto</label>
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
            <button class="button" type="submit">Daftarkan</button>
        </form>
    </div>
</div>
@endsection