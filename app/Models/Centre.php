<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class Centre extends Model
{
    protected $fillable=[
        'code',
        'libelle',
        'commune_id',
    ];

     /**
     * Get the typeProgramme that owns the Programme
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function communes(): BelongsTo
    {
        return $this->belongsTo(Commune::class);
    }
}
