<?php

namespace App\Http\Controllers;

use App\Models\Centre;
use App\Models\Comm;
use App\Models\Commune;
use App\Models\Region;
use Illuminate\Http\Request;

class ComunneApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas= Commune::all();
        return $datas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $commune = new Commune();
        $commune->code = $request->code;
        $commune->libelle = $request->libelle;
        Commune::create($commune);
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
    public function show(Commune $commune)
    {
        return $commune;
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function find(Region $region)
    {
        $datas= Commune::where('region_id',$region->id)->get();
        return $datas;
    }

        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function findcentre(Commune $commune)
    {
        $datas= Centre::where('commune_id',$commune->id)->get();
        return $datas;
    }

      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function findcommune(Centre $centre)
    {
        $datas= Comm::where('centre_id',$centre->id)->get();
        return $datas;
    }
}
