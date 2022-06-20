@extends('layout/template')
@section('title',"Login | DA Smanja")
@section('login',"active")
@section('konten')

<div class="login">
    <div class="login-container">
        <h2>Login Admin</h2>
        @if(session('status'))
        <?= session('status'); ?>
        @endif
        <form action="/validateLogin" method="POST">
            @csrf
            <div class="form-group">
                <label for="username"><i class="fas fa-user"></i></label>
                <input type="text" id="username" class="text-input @error('username') invalid @enderror" value="{{old('username')}}" name="username" placeholder="username" autofocus>
                @error('username')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-group">
                <label for="password"><i class="fas fa-key"></i></label>
                <input type="password" id="password" class="text-input @error('password') invalid @enderror" value="{{old('password')}}" name="password" placeholder="password">
                @error('password')
                <div class="errors-message">
                    {{$message}}
                </div>
                @enderror
            </div>
            <button type="submit" class="button">Login</button>
        </form>
    </div>
</div>


@endsection