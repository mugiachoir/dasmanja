<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengurus extends Model
{
    protected $table = "daftar_pengurus";
    public $timestamps = false;
    protected $fillable = ['nama', 'kategori', 'jabatan', 'fb', 'ig', 'yt', 'gambar'];
}
