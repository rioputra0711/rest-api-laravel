<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('merek', function (Blueprint $table) {
            $table->string('kode_merek', 15)->primary();
            $table->string('nama_merek', 255);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('merek');
    }
};

