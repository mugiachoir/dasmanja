<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;

class NewsController extends Controller
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
            $news = News::where('judul', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $news = News::orderBy('updated_at', 'desc')->get();
        }
        $data = ['news' => $news];
        return view('admin/news', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/newsCreate');
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
            'preview' => 'required|max:200',
            'tanggal' => 'required',
            'isi' => 'required',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        News::create([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'preview' => $request->preview,
            'tanggal' => $request->tanggal,
            'isi' => $request->isi,
            'gambar' => $filename
        ]);

        $file->move('img/news', $filename);

        return redirect('/newsAdmin')->with('status', "<div class='alert alert-success'>Berita berhasil dibuat</div>");
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        $data = ["news" => $news];
        return view('admin/newsEdit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        $request->validate([
            "judul" => 'required',
            'preview' => 'required|max:200',
            'tanggal' => 'required',
            'isi' => 'required',
            "gambar" => 'mimes:jpg,jpeg|max:1000'
        ]);

        $file = $request->file('gambar');
        // Cek perubahan pada file
        if ($file == null) {
            $filename = $news->gambar;
        } else {
            $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
            // Pindahkan lokasi file
            $file->move('img/news', $filename);
            // hapus file lama
            File::delete('img/news/' . $news->gambar);
        }

        News::where('id', $news->id)->update([
            'judul' => filter_var($request->judul, FILTER_SANITIZE_STRING),
            'preview' => $request->preview,
            'tanggal' => $request->tanggal,
            'isi' => $request->isi,
            'gambar' => $filename
        ]);

        return redirect('/newsAdmin')->with('status', "<div class='alert alert-success'>Berita berhasil diubah</div>");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $news = News::where('id', $id)->first();
        File::delete('img/news/' . $news->gambar);
        News::destroy($id);
        return redirect('/newsAdmin')->with('status', "<div class='alert alert-success'>Berita berhasil dihapus</div>");
    }
}
