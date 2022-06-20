<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Kegiatan;

class KegiatanController extends Controller
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
            $kegiatan = Kegiatan::where('nama', 'LIKE', '%' . $keyword . '%')->orWhere('gambar', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $kegiatan = Kegiatan::orderBy('id', 'desc')->get();
        }
        $data = ['kegiatan' => $kegiatan];
        return view('admin/kegiatan', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = ['perkemahan', 'internal', 'hiburan', 'perlombaan'];
        $data = ['kategori' => $kategori];
        return view('admin/kegiatanCreate', $data);
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
            "deskripsi" => 'required',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Kegiatan::create([
            'nama' => filter_var($request->nama, FILTER_SANITIZE_STRING),
            'deskripsi' => filter_var($request->deskripsi, FILTER_SANITIZE_STRING),
            'kategori' => filter_var($request->kategori, FILTER_SANITIZE_STRING),
            'gambar' => $filename
        ]);

        $file->move('img/kegiatan', $filename);

        return redirect('/kegiatanAdmin')->with('status', "<div class='alert alert-success'>Kegiatan berhasil dibuat</div>");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(kegiatan $kegiatan)
    {
        $kategori = ['perkemahan', 'internal', 'hiburan', 'perlombaan'];
        $data = [
            "kegiatan" => $kegiatan,
            "kategori" => $kategori
        ];
        return view('admin/kegiatanEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, kegiatan $kegiatan)
    {
        $request->validate([
            "nama" => 'required',
            "deskripsi" => 'required',
            "gambar" => 'mimes:jpg,jpeg|max:1000'
        ]);

        $file = $request->file('gambar');
        // Cek perubahan pada file
        if ($file == null) {
            $filename = $kegiatan->gambar;
        } else {
            $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            // Pindahkan lokasi file
            $file->move('img/kegiatan', $filename);
            // hapus file lama
            File::delete('img/kegiatan/' . $kegiatan->gambar);
        }

        kegiatan::where('id', $kegiatan->id)->update([
            'nama' => filter_var($request->nama, FILTER_SANITIZE_STRING),
            'deskripsi' => filter_var($request->deskripsi, FILTER_SANITIZE_STRING),
            'kategori' => filter_var($request->kategori, FILTER_SANITIZE_STRING),
            'gambar' => $filename
        ]);

        return redirect('/kegiatanAdmin')->with('status', "<div class='alert alert-success'>Kegiatan berhasil diubah</div>");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kegiatan = Kegiatan::where('id', $id)->first();
        File::delete('img/kegiatan/' . $kegiatan->gambar);
        Kegiatan::destroy($id);
        return redirect('/kegiatanAdmin')->with('status', "<div class='alert alert-success'>Kegiatan berhasil dihapus</div>");
    }
}
