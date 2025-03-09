<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kelurahan', function (Blueprint $table) {
            $table->string('kode_kelurahan', 15)->primary();
            $table->string('kode_kecamatan', 15);
            $table->string('nama_kelurahan', 255);
            $table->timestamps();

            $table->foreign('kode_kecamatan')->references('kode_kecamatan')->on('kecamatan')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kelurahan');
    }
};
