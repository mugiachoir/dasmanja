@extends('layout/template')
@section('title',"Tambah Student")
@section('students',"active")
@section('konten')

<h2>Tambah Data</h2>

<form action="{{url('students/store')}}" method="POST">
    @csrf
    <div class="form-group">
        <label for="nama">Nama</label>
        <input type="text" name="nama" id="nama" class="@error('nama') invalid @enderror" value="{{old('nama')}}">
        @error('nama')
        <div class="errors-message">
            {{$message}}
        </div>
        @enderror
    </div>
    <div class="form-group">
        <label for="nrp">NRP</label>
        <input type="text" name="nrp" id="nrp" class="@error('nrp') invalid @enderror" value="{{old('nrp')}}">
        @error('nrp')
        <div class="errors-message">
            {{$message}}
        </div>
        @enderror
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="{{old('email')}}">
    </div>
    <div class="form-group">
        <label for="jurusan">Jurusan</label>
        <input type="text" name="jurusan" id="jurusan" value="{{old('jurusan')}}">
    </div>
    <button type="submit">Submit</button>
</form>


@endsection