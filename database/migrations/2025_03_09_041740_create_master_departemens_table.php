<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('master_departement', function (Blueprint $table) {
            $table->string('kode_departement', 15)->primary();
            $table->integer('nama_departement');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('master_departement');
    }
};
