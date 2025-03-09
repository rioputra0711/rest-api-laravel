<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('provinsi', function (Blueprint $table) {
            $table->string('kode_provinsi', 15)->primary();
            $table->string('nama_provinsi', 255);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('provinsi');
    }
};
