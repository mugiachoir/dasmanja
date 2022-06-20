<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model
{
    protected $table = "daftar_kegiatan";
    public $timestamps = false;
    protected $fillable = ['nama', 'deskripsi', 'gambar', 'kategori'];
}
