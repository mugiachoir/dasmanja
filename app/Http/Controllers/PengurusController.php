<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Pengurus;


class PengurusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('keyword')) {
            $keyword = $request->input('keyword');
            $pengurus = Pengurus::where('nama', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $pengurus = Pengurus::orderBy('kategori', 'desc')->get();
        }
        $data = ['pengurus' => $pengurus];
        return view('admin/pengurus', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = ['15-16', '16-17', '17-18', '18-19', '19-20', '20-21'];
        $data = ['kategori' => $kategori];
        return view('admin/pengurusCreate', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            "nama" => 'required',
            'kategori' => 'required',
            'jabatan' => 'required',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Pengurus::create([
            'nama' => filter_var(strtoupper($request->nama), FILTER_SANITIZE_STRING),
            'kategori' => filter_var($request->kategori, FILTER_SANITIZE_STRING),
            'jabatan' => filter_var($request->jabatan, FILTER_SANITIZE_STRING),
            'fb' => filter_var($request->fb, FILTER_SANITIZE_URL),
            'ig' => filter_var($request->ig, FILTER_SANITIZE_URL),
            'yt' => filter_var($request->yt, FILTER_SANITIZE_URL),
            'gambar' => $filename
        ]);

        $file->move('img/pengurus', $filename);

        return redirect('/pengurusAdmin')->with('status', "<div class='alert alert-success'>Pengurus berhasil ditambahkan</div>");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Pengurus $pengurus)
    {
        $kategori = ['15-16', '16-17', '17-18', '18-19', '19-20', '20-21'];
        $data = [
            "pengurus" => $pengurus,
            "kategori" => $kategori
        ];
        return view('admin/pengurusEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pengurus $pengurus)
    {
        $request->validate([
            "nama" => 'required',
            'kategori' => 'required',
            'jabatan' => 'required',
            "gambar" => 'mimes:jpg,jpeg|max:1000'
        ]);

        $file = $request->file('gambar');
        // Cek perubahan pada file
        if ($file == null) {
            $filename = $pengurus->gambar;
        } else {
            $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            // Pindahkan lokasi file
            $file->move('img/pengurus', $filename);
            // hapus file lama
            File::delete('img/pengurus/' . $pengurus->gambar);
        }

        // dd($request->yt);
        if (filter_var($request->yt, FILTER_SANITIZE_URL) == null) {
            $yt = null;
        } else {
            $yt = filter_var($request->yt, FILTER_SANITIZE_URL);
        }
        if (filter_var($request->fb, FILTER_SANITIZE_URL) == null) {
            $fb = null;
        } else {
            $fb = filter_var($request->fb, FILTER_SANITIZE_URL);
        }
        if (filter_var($request->ig, FILTER_SANITIZE_URL) == null) {
            $ig = null;
        } else {
            $ig = filter_var($request->ig, FILTER_SANITIZE_URL);
        }
        Pengurus::where('id', $pengurus->id)->update([
            'nama' => filter_var(strtoupper($request->nama), FILTER_SANITIZE_STRING),
            'kategori' => filter_var($request->kategori, FILTER_SANITIZE_STRING),
            'jabatan' => filter_var($request->jabatan, FILTER_SANITIZE_STRING),
            'fb' => $fb,
            'ig' => $ig,
            'yt' => $yt,
            'gambar' => $filename
        ]);

        return redirect('/pengurusAdmin')->with('status', "<div class='alert alert-success'>Data pengurus berhasil diubah</div>");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pengurus = Pengurus::where('id', $id)->first();
        File::delete('img/pengurus/' . $pengurus->gambar);
        pengurus::destroy($id);
        return redirect('/pengurusAdmin')->with('status', "<div class='alert alert-success'>Data pengurus berhasil dihapus</div>");
    }
}
