<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Electeur extends Model
{
    protected $fillable=[
        'prenom',
        'nom',
        'datenaissance',
        'adresse',
        'cni',
        'centre_id',
    ];
    /**
     * Get the Electeur that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function centres(): BelongsTo
    {
        return $this->belongsTo(Centre::class);
    }
}
