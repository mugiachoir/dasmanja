<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen extends Model
{
    protected $fillable = ['judul', 'author', 'file', 'gambar'];
}
