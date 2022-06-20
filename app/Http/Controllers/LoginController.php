<?php

namespace App\Http\Controllers;

use App\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login()
    {
        if (session('scout_in')) {
            return redirect('/dashboard');
        } else {
            return view('pages/login');
        }
    }

    public function validateLogin(Request $request)
    {
        $request->validate([
            "username" => 'required',
            'password' => 'required'
        ]);

        $data = Admin::where('username', $request->username)->first();
        if ($data) {
            if (password_verify($request->password, $data->password)) {
                if ($data->is_activated == 1) {
                    session(['scout_in' => true, 'id' => $data->id]);
                    return redirect('/dashboard');
                }
            } else {
                return redirect('/login')->with('status', "<div class='alert alert-danger'>Username atau Password salah</div>");
            }
        } else {
            return redirect('/login')->with('status', "<div class='alert alert-danger'>Username atau Password salah</div>");
        }
    }

    public function logout(Request $request)
    {
        $request->session()->flush();
        return redirect('/login')->with('status', "<div class='alert alert-success'>Logout Berhasil</div>");
    }

    public function dashboard()
    {
        $user = Admin::where('id', session('id'))->first();
        return view('admin/dashboard', compact('user'));
    }
}
