<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kecamatan', function (Blueprint $table) {
            $table->string('kode_kecamatan', 15)->primary();
            $table->string('kode_kabkota', 15);
            $table->string('nama_kecamatan', 255);
            $table->timestamps();

            $table->foreign('kode_kabkota')->references('kode_kabkota')->on('kabkota')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kecamatan');
    }
};
