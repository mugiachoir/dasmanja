<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Materi;

class MateriController extends Controller
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
            $materi = Materi::where('judul', 'LIKE', '%' . $keyword . '%')->orWhere('gambar', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $materi = Materi::orderBy('updated_at', 'desc')->get();
        }
        $data = ['materi' => $materi];
        return view('admin/materi', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/materiCreate');
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
            "judul" => 'required',
            'quote' => 'required|max:200',
            'deskripsi' => 'required',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Materi::create([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'quote' => $request->quote,
            'deskripsi' => $request->deskripsi,
            'gambar' => $filename
        ]);

        $file->move('img/materi', $filename);

        return redirect('/materiAdmin')->with('status', "<div class='alert alert-success'>Materi berhasil dibuat</div>");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Materi $materi)
    {
        $data = ["materi" => $materi];
        return view('admin/materiEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Materi $materi)
    {
        $request->validate([
            "judul" => 'required',
            'quote' => 'required|max:200',
            'deskripsi' => 'required',
            "gambar" => 'mimes:jpg,jpeg|max:1000'
        ]);

        $file = $request->file('gambar');
        // Cek perubahan pada file
        if ($file == null) {
            $filename = $materi->gambar;
        } else {
            $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            // Pindahkan lokasi file
            $file->move('img/materi', $filename);
            // hapus file lama
            File::delete('img/materi/' . $materi->gambar);
        }

        materi::where('id', $materi->id)->update([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'quote' => $request->quote,
            'deskripsi' => $request->deskripsi,
            'gambar' => $filename
        ]);

        return redirect('/materiAdmin')->with('status', "<div class='alert alert-success'>Materi berhasil diubah</div>");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $materi = Materi::where('id', $id)->first();
        File::delete('img/materi/' . $materi->gambar);
        Materi::destroy($id);
        return redirect('/materiAdmin')->with('status', "<div class='alert alert-success'>Materi berhasil dihapus</div>");
    }
}
