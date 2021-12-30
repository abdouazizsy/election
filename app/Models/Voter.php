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
        'annee_id',
    ];
    /**
     * Get the ELecteur that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function electeur(): BelongsTo
    {
        return $this->belongsTo(Electeur::class,'electeur_id');
    }
     /**
     * Get the Candidat that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function listeelectoral(): BelongsTo
    {
        return $this->belongsTo(ListeElectoral::class);
    }
     /**
     * Get the Candidat that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function annee(): BelongsTo
    {
        return $this->belongsTo(Annee::class);
    }
      /**
     * Get the Candidat that owns the Centre
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function comm(): BelongsTo
    {
        return $this->belongsTo(Comm::class);
    }

}
