<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('master_kondisi', function (Blueprint $table) {
            $table->string('kode_kondisi', 5)->primary();
            $table->string('nama_kondisi', 255);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('master_kondisi');
    }
};
