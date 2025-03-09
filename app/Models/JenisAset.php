<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JenisAset extends Model
{
    use HasFactory;

    protected $table = 'JenisAset';
    protected $primaryKey = 'kode_jenis_aset';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_jenis_aset', 'jenis_aset'];

    public $timestamps = false;
}
