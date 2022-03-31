<?php

namespace App\Models;
use App\Models\Comm;
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
        'photo',
        'comm_id',
    ];
    protected $appends = ['photo_path'];

    public function getPhotoPathAttribute()
    {
        return request()->getSchemeAndHttpHost() . '/uploads/candidats/' . $this->photo;
    }

     /**
     * Get the representant that owns the commune
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function comm()
    {
        return $this->belongsTo(Comm::class);
    }

     /**
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function voters()
    {
        return $this->hasMany(Voter::class);
    }


}
