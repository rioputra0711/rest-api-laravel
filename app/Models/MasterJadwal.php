<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterJadwal extends Model
{
    use HasFactory;

    protected $table = 'MasterJadwal';
    protected $primaryKey = 'kode_jadwal';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_jadwal', 'nama_jadwal'];

    public $timestamps = false;
}
