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
        Schema::create('booking_expenses', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignId('booking_id')->constrained()->onDelete('cascade');
            $table->foreignId('guide_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('driver_id')->nullable()->constrained()->onDelete('cascade');
            $table->string('payment_method');
            $table->string('payment_status');
            $table->decimal('amount', 10, 2);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('booking_expenses');
    }
};
