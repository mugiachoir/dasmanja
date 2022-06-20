<?php

namespace App\Http\Controllers;

use App\News;
use App\Materi;
use App\Pengurus;
use App\Kegiatan;
use App\Galeri;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PagesController extends Controller
{

    public function home()
    {
        $news = News::orderBy('updated_at', 'desc')->get();
        $materi = Materi::orderBy('updated_at', 'desc')->get();
        $data = [
            "news" => $news,
            "materi" => $materi
        ];
        return view('pages/home', $data);
    }

    public function getNews($id)
    {
        header('Content-Type: application/json');
        $data = News::where('id', $id)->first();
        $data->isi = html_entity_decode($data->isi);
        $data = json_encode($data);
        echo $data;
        die();
    }


    public function indexMateri(Request $request)
    {

        if ($request->has('keyword')) {
            $keyword = $request->input('keyword');
            $materi = Materi::where('judul', 'LIKE', '%' . $keyword . '%')->orWhere('gambar', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $materi = Materi::orderBy('updated_at', 'desc')->get();
        }
        $data = [
            "materi" => $materi
        ];
        return view('materi/index', $data);
    }


    public function detailMateri($id)
    {
        $materi = Materi::all()->find($id);
        $daftar = Materi::orderBy('updated_at', 'desc')->get();
        $data = [
            'daftar' => $daftar,
            'materi' => $materi
        ];

        return view('materi/detail', $data);
    }

    public function indexKegiatan()
    {
        $perkemahan = Kegiatan::where('kategori', 'perkemahan')->get();
        $internal = Kegiatan::where('kategori', 'internal')->get();
        $perlombaan = Kegiatan::where('kategori', 'perlombaan')->get();
        $hiburan = Kegiatan::where('kategori', 'hiburan')->get();
        $data = [
            'perkemahan' => $perkemahan,
            'internal' => $internal,
            'perlombaan' => $perlombaan,
            'hiburan' => $hiburan
        ];

        return view('pages/kegiatan', $data);
    }

    public function about()
    {
        return view('pages/about');
    }

    public function indexPengurus()
    {
        $angkatan15 = Pengurus::where('kategori', '15-16')->get();
        $angkatan16 = Pengurus::where('kategori', '16-17')->get();
        $angkatan17 = Pengurus::where('kategori', '17-18')->get();
        $angkatan18 = Pengurus::where('kategori', '18-19')->get();
        $angkatan19 = Pengurus::where('kategori', '19-20')->get();
        $data = [
            'angkatan15' => $angkatan15,
            'angkatan16' => $angkatan16,
            'angkatan17' => $angkatan17,
            'angkatan18' => $angkatan18,
            'angkatan19' => $angkatan19
        ];
        return view('pages/pengurus', $data);
    }

    public function indexGaleri(Request $request)
    {

        if ($request->has('keyword')) {
            $keyword = $request->input('keyword');
            $galeri = Galeri::where('nama', 'LIKE', '%' . $keyword . '%')->orWhere('gambar', 'LIKE', '%' . $keyword . '%')->get();
        } else {
            $galeri = Galeri::orderBy('updated_at', 'desc')->get();
        }
        $data = [
            "galeri" => $galeri
        ];
        return view('pages/galeri', $data);
    }
}
