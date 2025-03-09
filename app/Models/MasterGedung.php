<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterGedung extends Model
{
    use HasFactory;

    protected $table = 'MasterGedung';
    protected $primaryKey = 'kode_gedung';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_gedung', 'nama_gedung'];

    public $timestamps = false;
}
