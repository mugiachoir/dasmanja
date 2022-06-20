<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Dokumen;

class DokumenController extends Controller
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
            $dokumen = Dokumen::where('judul', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $dokumen = Dokumen::orderBy('updated_at', 'desc')->get();
        }
        $data = ['dokumen' => $dokumen];
        return view('admin/dokumen', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/dokumenCreate');
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
            'author' => 'required',
            "file" => 'required|mimes:doc,docx,xls,xlsx,ppt,pptx,pdf|max:2000|file'
        ]);

        $file = $request->file('file');
        $extension = $file->getClientOriginalExtension();
        if ($extension == 'doc' || $extension == 'docx') {
            $gambar = 'word.jpg';
        } else if ($extension == 'xls' || $extension == 'xlsx') {
            $gambar = 'excel.jpg';
        } else if ($extension == 'ppt' || $extension == 'pptx') {
            $gambar = 'ppt.jpg';
        } else if ($extension == 'pdf') {
            $gambar = 'pdf.jpg';
        }
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Dokumen::create([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'author' => filter_var($request->author, FILTER_SANITIZE_STRING),
            'file' => $filename,
            'gambar' => $gambar
        ]);

        $file->move('data_file', $filename);

        return redirect('/dokumen')->with('status', "<div class='alert alert-success'>Dokumen berhasil dibuat</div>");
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Dokumen $dokumen)
    {
        $data = ["dokumen" => $dokumen];
        return view('admin/dokumenEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dokumen $dokumen)
    {
        $request->validate([
            "judul" => 'required',
            'author' => 'required',
            "file" => 'mimes:doc,docx,xls,xlsx,ppt,pptx,pdf|max:2000'
        ]);

        // Ambil file
        $file = $request->file('file');
        // Cek perubahan pada file
        if ($file == null) {
            $namaFile = $dokumen->file;
            $gambar = $dokumen->gambar;
        } else {
            $namaFile = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            $extension = $file->getClientOriginalExtension();
            if ($extension == 'doc' || $extension == 'docx') {
                $gambar = 'word.jpg';
            } else if ($extension == 'xls' || $extension == 'xlsx') {
                $gambar = 'excel.jpg';
            } else if ($extension == 'ppt' || $extension == 'pptx') {
                $gambar = 'ppt.jpg';
            } else if ($extension == 'pdf') {
                $gambar = 'pdf.jpg';
            }
            // Pindahkan lokasi file
            $file->move('data_file', $namaFile);
            // hapus file lama
            File::delete('data_file/' . $dokumen->file);
        }

        Dokumen::where('id', $dokumen->id)->update([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'author' => filter_var($request->author, FILTER_SANITIZE_STRING),
            'file' => $namaFile,
            'gambar' => $gambar
        ]);

        return redirect('/dokumen')->with('status', "<div class='alert alert-success'>Dokumen berhasil diubah</div>");
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $file = Dokumen::where('id', $id)->first();
        File::delete('data_file/' . $file->file);
        Dokumen::destroy($id);
        return redirect('/dokumen')->with('status', "<div class='alert alert-success'>Dokumen berhasil dihapus</div>");
    }
}
