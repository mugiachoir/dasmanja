@extends('layout/template')
@section('title',"Detail Student")
@section('students',"active")
@section('konten')

<div class="daftar-team">
    <table class="tabel">
        <tr>
            <th>Nama</th>
            <th>NIM</th>
            <th>Email</th>
            <th>jurusan</th>
            <th>Created</th>
            <th>Updated</th>
            <th>Aksi</th>
        </tr>
        <tr>
            <td>{{$student->nama}}</td>
            <td>{{$student->nrp}}</td>
            <td>{{$student->email}}</td>
            <td>{{$student->jurusan}}</td>
            <td>{{$student->created_at}}</td>
            <td>{{$student->updated_at}}</td>
            <td> <a href="{{url('/students')}}/{{$student->id}}/edit" class="detail">Edit</a>
                <form method="post">
                    @method('delete')
                    @csrf
                    <button type="submit" onclick="return confirm('Hapus data?');">Delete</button>
                </form>
                <a href="{{url('/students')}}" class="detail">Back</a>
            </td>
        </tr>

    </table>

</div>


@endsection