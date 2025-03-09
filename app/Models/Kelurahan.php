<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelurahan extends Model
{
    use HasFactory;

    protected $table = 'Kelurahan';
    protected $primaryKey = 'kode_kelurahan';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_kelurahan', 'kode_kecamatan', 'nama_kelurahan'];

    public $timestamps = false;
}
