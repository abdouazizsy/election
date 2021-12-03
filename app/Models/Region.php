<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    protected $fillable=[
        'code',
        'libelle',
    ];
    public function communes()
    {
        return $this->hasMany(Commune::class);
    }
}
