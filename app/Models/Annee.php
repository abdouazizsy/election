<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Annee extends Model
{
    protected $fillable=[
        'code',
        'libelle',
        'encours',
    ];
}
