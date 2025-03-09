<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    use HasFactory;

    protected $table = 'Kecamatan';
    protected $primaryKey = 'kode_kecamatan';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_kecamatan', 'kode_kabkota', 'nama_kecamatan'];

    public $timestamps = false;
}
