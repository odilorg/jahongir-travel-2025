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
        Schema::table('tour_day_hotels', function (Blueprint $table) {
            $table->string(column: 'type')->nullable()->after('hotel_id'); // Add type column
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tour_day_hotels', function (Blueprint $table) {
            //
        });
    }
};
