<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kabkota extends Model
{
    use HasFactory;

    protected $table = 'KabKota';
    protected $primaryKey = 'kode_kabkota';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_kabkota', 'kode_provinsi', 'nama_kabkota'];

    public $timestamps = false;
}
