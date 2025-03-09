<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProvinsiController;
use App\Http\Controllers\KabkotaController;
use App\Http\Controllers\KecamatanController;
use App\Http\Controllers\KelurahanController;
use App\Http\Controllers\JenisAsetController;
use App\Http\Controllers\MerekController;
use App\Http\Controllers\MasterKondisiController;
use App\Http\Controllers\MasterStatusController;
use App\Http\Controllers\MasterDepartemenController;
use App\Http\Controllers\MasterJadwalController;
use App\Http\Controllers\MasterGedungController;

// Route API Resource
Route::apiResource('provinsi', ProvinsiController::class);
Route::apiResource('kabkota', KabkotaController::class);
Route::apiResource('kecamatan', KecamatanController::class);
Route::apiResource('kelurahan', KelurahanController::class);
Route::apiResource('jenis-aset', JenisAsetController::class);
Route::apiResource('merek', MerekController::class);
Route::apiResource('master-kondisi', MasterKondisiController::class);
Route::apiResource('master-status', MasterStatusController::class);
Route::apiResource('master-departemen', MasterDepartemenController::class);
Route::apiResource('master-jadwal', MasterJadwalController::class);
Route::apiResource('master-gedung', MasterGedungController::class);

?>