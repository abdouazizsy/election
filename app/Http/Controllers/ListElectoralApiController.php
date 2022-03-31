<?php

namespace App\Http\Controllers;
use App\Models\Electeur;
use App\Custom\FileHelper;
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
        return response()->json($datas,200);
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

        $listeElectoral=new ListeElectoral($request->all());

       if ($request->exists('photo')) {
        // convertir la photo en base64
        $photoFile = FileHelper::getFileFromBase64($request->photo);
        $extension = $photoFile->guessExtension();
        $filename = $request->code . '.' . $extension;
        $photoFile->storeAs('candidats', $filename);
        $listeElectoral->photo = $filename;
    }
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
