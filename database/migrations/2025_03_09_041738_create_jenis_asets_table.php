<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('jenis_aset', function (Blueprint $table) {
            $table->string('kode_jenis_aset', 10)->primary();
            $table->integer('jenis_aset');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('jenis_aset');
    }
};
