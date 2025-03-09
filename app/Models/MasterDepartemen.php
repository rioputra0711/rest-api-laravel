<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterDepartemen extends Model
{
    use HasFactory;

    protected $table = 'MasterDepartemen';
    protected $primaryKey = 'kode_departement';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_departement', 'nama_departement'];

    public $timestamps = false;
}
