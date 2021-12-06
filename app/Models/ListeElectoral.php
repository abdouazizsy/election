<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class ListeElectoral extends Model
{
    protected $fillable=[
        'nom_liste',
        'code',
        'representant_nom',
        'representant_prenom',
        'representant_cni',
        'representant_adresse',
        'representant_datenaissance',
        'commune_id',
    ];
     /**
     * Get the representant that owns the commune
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function commune():BelongsTo
    {
        return $this->belongsTo(Commune::class);
    }
}
