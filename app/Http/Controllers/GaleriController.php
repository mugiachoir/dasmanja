<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Galeri;

class GaleriController extends Controller
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
            $galeri = Galeri::where('nama', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $galeri = Galeri::orderBy('updated_at', 'desc')->get();
        }
        $data = ['galeri' => $galeri];
        return view('admin/galeri', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/galeriCreate');
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
            'link' => 'required|url',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Galeri::create([
            'nama' => filter_var($request->nama, FILTER_SANITIZE_STRING),
            'link' => filter_var($request->link, FILTER_SANITIZE_URL),
            'gambar' => $filename
        ]);

        $file->move('img/galeri', $filename);

        return redirect('/galeriAdmin')->with('status', "<div class='alert alert-success'>Album berhasil dibuat</div>");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Galeri $galeri)
    {
        $data = ["galeri" => $galeri];
        return view('admin/galeriEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Galeri $galeri)
    {
        $request->validate([
            "nama" => 'required',
            'link' => 'required|url',
            "gambar" => 'mimes:jpg,jpeg|max:1000'
        ]);

        $file = $request->file('gambar');
        // Cek perubahan pada file
        if ($file == null) {
            $filename = $galeri->gambar;
        } else {
            $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            // Pindahkan lokasi file
            $file->move('img/galeri', $filename);
            // hapus file lama
            File::delete('img/galeri/' . $galeri->gambar);
        }

        Galeri::where('id', $galeri->id)->update([
            'nama' => filter_var($request->nama, FILTER_SANITIZE_STRING),
            'link' => filter_var($request->link, FILTER_SANITIZE_URL),
            'gambar' => $filename
        ]);

        return redirect('/galeriAdmin')->with('status', "<div class='alert alert-success'>Album berhasil diubah</div>");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $galeri = Galeri::where('id', $id)->first();
        File::delete('img/galeri/' . $galeri->gambar);
        Galeri::destroy($id);
        return redirect('/galeriAdmin')->with('status', "<div class='alert alert-success'>Album berhasil dihapus</div>");
    }
}
