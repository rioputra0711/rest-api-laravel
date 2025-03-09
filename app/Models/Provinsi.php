<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    use HasFactory;

    protected $table = 'Provinsi'; // Sesuaikan dengan nama tabel di database

    protected $primaryKey = 'kode_provinsi'; // Jika primary key bukan "id"
    public $incrementing = false; // Jika primary key bukan auto-increment
    protected $keyType = 'string'; // Jika primary key berupa string
    protected $fillable = ['kode_provinsi', 'nama_provinsi']; // Sesuaikan dengan kolom di tabel

    public $timestamps = false;
}
