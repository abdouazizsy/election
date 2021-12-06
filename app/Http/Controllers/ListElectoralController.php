<?php

namespace App\Http\Controllers;

use App\Models\ListeElectoral;
use Illuminate\Http\Request;

class ListElectoralController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas= ListeElectoral::all();
        return $datas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $liste = new ListeElectoral();
        $liste->nom_liste = $request->nom_liste;
        $liste->code = $request->code;
        $liste->representant_nom = $request->representant_nom;
        $liste->representant_prenom = $request->representant_prenom;
        $liste->representant_cni = $request->representant_cni;
        $liste->representant_adresse = $request->representant_adresse;
        $liste->representant_datenaissance = $request->representant_datenaissance;
        $liste->commune_id = $request->commune_id;
        ListeElectoral::create($liste);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(ListeElectoral $listeElectoral)
    {
        return $listeElectoral;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
