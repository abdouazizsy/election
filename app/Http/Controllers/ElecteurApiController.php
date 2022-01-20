<?php

namespace App\Http\Controllers;

use App\Models\Citoyens;
use App\Models\Electeur;
use Illuminate\Http\Request;
header("Access-Control-Allow-Methods: GET, OPTIONS, POST, PUT");
class ElecteurApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas= Electeur::with('comm')->get();
        return $datas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $datas= Electeur::where('cni',$request->cni)->first();
        if($datas)
        {
            return 1;
        }
        else
        {

            $electeur=new Electeur();
            $electeur->prenom=$request->prenom;
            $electeur->nom=$request->nom;
            $electeur->datenaissance=$request->datenaissance;
            $electeur->adresse=$request->adresse;
            $electeur->cni=$request->cni;
            $electeur->comm_id=$request->comm_id;
            $electeur->save();
            return response()->json([
             'message' => "Successfully created",
             'success' => true
         ], 200);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Electeur $electeur)
    {
        return $electeur;
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
        $electeur=$request->all();
        Electeur::find($id)->update($electeur);
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

     /**
     * get the electeur
     *
     * @param  string  $cni
     * @return \Illuminate\Http\Response
     */
    public function findelecteur(string $cni)
    {
        $datas= Electeur::where('cni',$cni)->with('comm')->first();
        if($datas)
        {
           return $datas;
        }
        else{
            return [];
        }

    }




    /**
     * Show the form for editing the specified resource.
     *
     * @param  string  $cni
     * @return \Illuminate\Http\Response
     */
    public function findcitoyens(string $cni)
    {
        $citoyens=Citoyens::where('cni',$cni)->first();
        if($citoyens)
        {
            return 1;
        }
        else
        {
            return 0;
        }

    }

}
