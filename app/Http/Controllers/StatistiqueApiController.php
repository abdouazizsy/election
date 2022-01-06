<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
header("Access-Control-Allow-Methods: GET, OPTIONS, POST");
class StatistiqueApiController extends Controller
{

     /**
     * count nombre vote pour chaque candidats
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function countvotes()
    {

        $user_info = DB::table('voters')
                 ->join('liste_electorals', 'liste_electorals.id', '=', 'listeelectoral_id')
                 ->join('comms', 'comms.id', '=', 'liste_electorals.comm_id')
                 ->select('liste_electorals.code as NomListe',DB::raw('count(voters.id) as total'),'comms.code as Commune')
                 ->groupBy('liste_electorals.code','comms.code')
                 ->get();
                 return $user_info;
    }


      /**
     * count nombre vote pour chaque candidats de chaque commune
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function countvotes_bycommune(string $commune)
    {

        $user_info = DB::table('voters')
                 ->join('liste_electorals', 'liste_electorals.id', '=', 'listeelectoral_id')
                 ->join('comms', 'comms.id', '=', 'liste_electorals.comm_id')
                 ->where('comms.code',$commune)
                 ->select('liste_electorals.code as NomListe',DB::raw('count(voters.id) as total'),'comms.code as Commune')
                 ->groupBy('liste_electorals.code','comms.code')
                 ->get();
                 return $user_info;
    }



      /**
     * count nombre vote pour chaque candidats de chaque region
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function countvotes_byregion(string $region)
    {

        $user_info = DB::table('voters')
                 ->join('liste_electorals', 'liste_electorals.id', '=', 'listeelectoral_id')
                 ->join('comms', 'comms.id', '=', 'liste_electorals.comm_id')
                 ->join('centres', 'centres.id', '=', 'comms.centre_id')
                 ->join('communes', 'communes.id', '=', 'centres.commune_id')
                 ->join('regions', 'regions.id', '=', 'communes.region_id')
                 ->where('regions.libelle',$region)
                 ->select('liste_electorals.nom_liste as NomListe',DB::raw('count(voters.id) as total'))
                 ->groupBy('liste_electorals.nom_liste')
                 ->get();
                 return $user_info;
    }
 /**
     * count nombre votant pour chaque region
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function countvotant_byregion(string $region)
    {

        $user_info = DB::table('voters')
                 ->join('liste_electorals', 'liste_electorals.id', '=', 'listeelectoral_id')
                 ->join('comms', 'comms.id', '=', 'liste_electorals.comm_id')
                 ->join('centres', 'centres.id', '=', 'comms.centre_id')
                 ->join('communes', 'communes.id', '=', 'centres.commune_id')
                 ->join('regions', 'regions.id', '=', 'communes.region_id')
                 ->where('regions.libelle',$region)
                 ->select(DB::raw('count(voters.id) as total'))
                 ->get();
                 return $user_info;
    }


    /**
     * count nombre votant pour chaque region
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function findcommune_bynameregion(string $region)
    {

        $user_info = DB::table('comms')
                 ->join('centres', 'centres.id', '=', 'centre_id')
                 ->join('communes', 'communes.id', '=', 'centres.commune_id')
                 ->join('regions', 'regions.id', '=', 'communes.region_id')
                 ->where('regions.libelle',$region)
                 ->select('comms.libelle as Libelle')
                 ->get();
                 return $user_info;
    }


    /**
     * count nombre inscrit pour commune passer en paramètre
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function nombre_inscrit_bycommune(string $commune)
    {

        $user = DB::table('electeurs')
        ->join('comms', 'comms.id', '=', 'comm_id')
        ->where('comms.libelle',$commune)
        ->select(DB::raw('count(electeurs.id) as inscrit_total'))
        ->groupBy('comms.libelle')
        ->get();
        return $user;



    }



    /**
     * count nombre votant pour commune passer en paramètre
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function nombre_votant_bycommune(string $commune)
    {


        $user_info = DB::table('voters')
                 ->join('electeurs', 'electeurs.id', '=', 'electeur_id')
                 ->join('comms', 'comms.id', '=', 'electeurs.comm_id')
                 ->where('comms.libelle',$commune)
                 ->select(DB::raw('count(voters.id) as total'))
                 ->groupBy('comms.libelle')
                 ->get();
                 return $user_info;


    }





    /**
     * count nombre votant pour region passer en paramètre
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function nombre_votant_byregion(string $region)
    {
        $user_info = DB::table('voters')
                 ->join('electeurs', 'electeurs.id', '=', 'electeur_id')
                 ->join('comms', 'comms.id', '=', 'electeurs.comm_id')
                 ->join('centres', 'centres.id', '=', 'comms.centre_id')
                 ->join('communes', 'communes.id', '=', 'centres.commune_id')
                 ->join('regions', 'regions.id', '=', 'communes.region_id')
                 ->where('regions.libelle',$region)
                 ->select(DB::raw('count(voters.id) as total'))
                 ->groupBy('regions.libelle')
                 ->get();
                 return $user_info;
    }



      /**
     * count nombre inscrit pour commune passer en paramètre
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function nombre_inscrit_byregion(string $region)
    {

        $user = DB::table('electeurs')
        ->join('comms', 'comms.id', '=', 'comm_id')
        ->join('centres', 'centres.id', '=', 'comms.centre_id')
        ->join('communes', 'communes.id', '=', 'centres.commune_id')
        ->join('regions', 'regions.id', '=', 'communes.region_id')
        ->where('regions.libelle',$region)
        ->select(DB::raw('count(electeurs.id) as total'))
        ->groupBy('regions.libelle')
        ->get();
        return $user;



    }


}
