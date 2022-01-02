<?php

namespace App\Http\Controllers;

use App\Http\Resources\VoterResource;
use App\Models\Voter;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
header("Access-Control-Allow-Methods: GET, OPTIONS, POST");
class VoterApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas= VoterResource::collection(Voter::all());
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

        $datas= Voter::where('electeur_id',$request->electeur_id)->first();
        if($datas)
        {
            return 1;
        }
        else
        {
            $vote=new Voter();
            $vote->electeur_id=$request->electeur_id;
            $vote->listeelectoral_id=$request->listeelectoral_id;
            $vote->annee_id=$request->annee_id;
            $vote->save();
        }



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Voter $voter)
    {
        return $voter;
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



     /**
     * count nombre vote pour chaque candidats
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function countvotes()
    {

        $user_info = DB::table('voters','liste_electorals')
                 ->select('listeelectoral_id', DB::raw('count(*) as total'))
                 ->groupBy('listeelectoral_id.comm_id')
                 ->get();
                 return $user_info;
    }



}
