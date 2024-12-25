<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Tour extends Model
{
    protected $fillable = ['name', 'description'];

    public function days(): HasMany
    {
        return $this->hasMany(Day::class);
    }
}
