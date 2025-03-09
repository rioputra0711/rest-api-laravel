<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kabkota', function (Blueprint $table) {
            $table->string('kode_kabkota', 15)->primary();
            $table->string('kode_provinsi', 15);
            $table->string('nama_kabkota', 255);
            $table->timestamps();

            $table->foreign('kode_provinsi')->references('kode_provinsi')->on('provinsi')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kabkota');
    }
};
