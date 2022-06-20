<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pendaftar extends Model
{
    protected $fillable = ['nama', 'tanggal_lahir', 'alasan', 'kelamin', 'alamat', 'sekolah_asal', 'whatsapp', 'gambar'];
}
