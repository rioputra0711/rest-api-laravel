<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterKondisi extends Model
{
    use HasFactory;

    protected $table = 'MasterKondisi';
    protected $primaryKey = 'kode_kondisi';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_kondisi', 'nama_kondisi'];

    public $timestamps = false;
}
