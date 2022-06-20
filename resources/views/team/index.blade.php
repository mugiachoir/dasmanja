@extends('layout/template')
@section('title',"Daftar Anggota | DA Smanja")
@section('team',"active")
@section('konten')

<div class="konten">
    <h1>About a complicated man</h1>
    <h2>About Two</h2>
    <h3>About Three</h3>
    <p>About Button</p>
</div>
<div class="daftar-team">
    <table class="tabel">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>jabatan</th>
            <th>Aksi</th>
        </tr>
        @foreach($pengurus as $peng)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$peng->nama}}</td>
            <td>{{$peng->jurusan}}</td>
            <td><a href="" class="detail">Detail</a>
                <a href="" class="delete">Delete</a></td>
        </tr>
        @endforeach

    </table>

</div>


@endsection