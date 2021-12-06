<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Voter extends Model
{
    protected $fillable=[
        'electeur_id',
        'listeelectoral_id',
    ];
    /**
     * Get the ELecteur that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function electeurs(): BelongsTo
    {
        return $this->belongsTo(Electeur::class);
    }
     /**
     * Get the Candidat that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function listelectorales(): BelongsTo
    {
        return $this->belongsTo(ListeElectoral::class);
    }

}
