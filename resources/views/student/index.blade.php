@extends('layout/template')
@section('title',"Daftar Student")
@section('students',"active")
@section('konten')

<a href="{{url('/students/create')}}">Create New Data</a>
<div class="daftar-team">
    @if(session('status'))
    <div class="alert alert-success">
        <h1>{{session('status')}}</h1>
    </div>
    @endif
    <table class="tabel">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Aksi</th>
        </tr>
        @foreach($students as $student)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$student->nama}}</td>
            <td><a href="{{url('/students')}}/{{$student->id}}" class="detail">Detail</a></td>
        </tr>
        @endforeach

    </table>

</div>


@endsection