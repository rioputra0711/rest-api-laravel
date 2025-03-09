<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterStatus extends Model
{
    use HasFactory;

    protected $table = 'MasterStatus';
    protected $primaryKey = 'kode_status';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['kode_status', 'nama_status'];

    public $timestamps = false;
}
