<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Pendaftar;

class PendaftaranController extends Controller
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
            $pendaftar = Pendaftar::where('nama', 'LIKE', '%' . $keyword . '%')->get();
            $jumlahLaki = Pendaftar::where([
                ['kelamin', '=', 'laki-laki'],
                ['nama', 'LIKE', '%' . $keyword . '%']
            ])->count();
            $jumlahPerem = Pendaftar::where([
                ['kelamin', '=', 'perempuan'],
                ['nama', 'LIKE', '%' . $keyword . '%']
            ])->count();
        } else {
            $pendaftar = Pendaftar::orderBy('updated_at', 'desc')->get();
            $jumlahLaki = Pendaftar::where('kelamin', '=', 'laki-laki')->count();
            $jumlahPerem = Pendaftar::where('kelamin', '=', 'perempuan')->count();
        }
        $data = [
            'pendaftar' => $pendaftar,
            'jumlahLaki' => $jumlahLaki,
            'jumlahPerem' => $jumlahPerem,
            'total' => $jumlahLaki + $jumlahPerem
        ];
        return view('admin/pendaftaran', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kelamin = ['laki-laki', 'perempuan'];
        $data = ['kelamin' => $kelamin];
        return view('pendaftaran/index', $data);
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
            'alamat' => 'required',
            'alasan' => 'required',
            'whatsapp' => 'required',
            'sekolah_asal' => 'required',
            "gambar" => 'required|mimes:jpg,jpeg|max:1000|file'
        ]);

        $file = $request->file('gambar');
        $filename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME) . rand() . '.' . $file->getClientOriginalExtension();
        Pendaftar::create([
            'nama' => filter_var($request->nama, FILTER_SANITIZE_STRING),
            'alamat' => filter_var($request->alamat, FILTER_SANITIZE_STRING),
            'alasan' => filter_var($request->alasan, FILTER_SANITIZE_STRING),
            'tanggal_lahir' => filter_var($request->tanggal_lahir, FILTER_SANITIZE_STRING),
            'whatsapp' => filter_var($request->whatsapp, FILTER_SANITIZE_STRING),
            'kelamin' => filter_var($request->kelamin, FILTER_SANITIZE_STRING),
            'sekolah_asal' => filter_var($request->sekolah_asal, FILTER_SANITIZE_STRING),
            'gambar' => $filename
        ]);

        $file->move('img/pendaftar', $filename);
        $anggota = Pendaftar::where([
            ['whatsapp', '=', $request->whatsapp],
            ['gambar', '=', $filename]
        ])->first();
        $data = [
            'anggota' => $anggota
        ];
        return view('pendaftaran/show', $data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pendaftar = Pendaftar::where('id', $id)->first();
        File::delete('img/pendaftar/' . $pendaftar->gambar);
        pendaftar::destroy($id);
        return redirect('/registration')->with('status', "<div class='alert alert-success'>Pendaftar berhasil dihapus</div>");
    }
}
