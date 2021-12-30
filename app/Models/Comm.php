<?php

namespace App\Models;
use App\Models\ListeElectoral;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comm extends Model
{
    protected $fillable=[
        'code',
        'libelle',
        'centre_id',
    ];

     /**
     * Get the typeProgramme that owns the Programme
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function centre(): BelongsTo
    {
        return $this->belongsTo(Centre::class);
    }

}
