<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('tours', function (Blueprint $table) {
            $table->string('departure_return_location');
            $table->string('departure_time');
            $table->json('tour_includes');
            $table->json('tour_excludes')->nullable();
            $table->json('tour_prices');
            $table->json('tour_photos');
            


            

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tours', function (Blueprint $table) {
            //
        });
    }
};
