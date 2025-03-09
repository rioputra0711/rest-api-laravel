<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Merek extends Model
{
    use HasFactory;

    protected $table = 'Merek';
    protected $primaryKey = 'kode_merek';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_merek', 'nama_merek'];

    public $timestamps = false;
}
