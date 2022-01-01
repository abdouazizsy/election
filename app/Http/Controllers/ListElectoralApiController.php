<?php

namespace App\Http\Controllers;
use App\Models\Electeur;
use App\Models\ListeElectoral;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\FileNotFoundException;
use Exception;
header("Access-Control-Allow-Methods: GET, OPTIONS, POST, PUT");
header("Access-Control-Allow-Headers: origin, content-type, accept, x-requested-with, authorization, X-Custom-Header");
class ListElectoralApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas=ListeElectoral::with('comm')->get();
        return $datas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $folderPath = "C:/xamp/htdocs/livecoding/storage/app/profils/"; //path location

        $image_parts = explode(";base64,", $request->photo);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $image_base64 = base64_decode($image_parts[1]);
        $uniqid = uniqid();
        $file = $folderPath . $uniqid . '.'.$image_type;
        file_put_contents($file, $image_base64);





        $listeElectoral=new ListeElectoral();
        $listeElectoral->nom_liste=$request->nom_liste;
        $listeElectoral->code=$request->code;
        $listeElectoral->representant_nom=$request->representant_nom;
        $listeElectoral->representant_prenom=$request->representant_prenom;
        $listeElectoral->representant_cni=$request->representant_cni;
        $listeElectoral->representant_adresse=$request->representant_adresse;
        $listeElectoral->representant_datenaissance=$request->representant_datenaissance;
        $listeElectoral->representant_datenaissance=$request->representant_datenaissance;
        $listeElectoral->comm_id=$request->comm_id;
        $listeElectoral->photo = $file;
        $listeElectoral->save();


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
        $liste=$request->all();
        ListeElectoral::find($id)->update($liste);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ListeElectoral::find($id)->delete();
    }

     /**
     * get the candidats
     *
     * @param  string  $cni
     * @return \Illuminate\Http\Response
     */
    public function findcandidats(string $cni)
    {
        $datas= Electeur::where('cni',$cni)->first();


        if($datas)
        {
            $datas1=ListeElectoral::where('comm_id',$datas->comm_id)->with('comm')->get();


            return $datas1;

        }
        else{
            return [];
        }

    }


}
