<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Citoyens extends Model
{
    protected $fillable=[
        'prenom',
        'nom',
        'datenaissance',
        'adresse',
        'cni',
    ];
}
