@extends('layout/template')
@section('title',"Edit Student")
@section('students',"active")
@section('konten')

<h2>Ubah Data</h2>

<form action="{{url('students/')}}/{{$student->id}}" method="POST">
    @method('patch')
    @csrf
    <div class="form-group">
        <label for="nama">Nama</label>
        <input type="text" name="nama" id="nama" class="@error('nama') invalid @enderror" value="{{(old('nama'))?old('nama'):$student->nama}}">
        @error('nama')
        <div class="errors-message">
            {{$message}}
        </div>
        @enderror
    </div>
    <div class="form-group">
        <label for="nrp">NRP</label>
        <input type="text" name="nrp" id="nrp" class="@error('nrp') invalid @enderror" value="{{(old('nrp'))?old('nrp'):$student->nrp}}">
        @error('nrp')
        <div class="errors-message">
            {{$message}}
        </div>
        @enderror
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="{{(old('email'))?old('email'):$student->email}}">
    </div>
    <div class="form-group">
        <label for="jurusan">Jurusan</label>
        <input type="text" name="jurusan" id="jurusan" value="{{(old('jurusan'))?old('jurusan'):$student->jurusan}}">
    </div>
    <button type="submit">Submit</button>
</form>


@endsection