<?php

use App\Http\Controllers\AdministrateurApiControlleur;
use App\Http\Controllers\AnneeApiController;
use App\Http\Controllers\CentreVoteApiController;
use App\Http\Controllers\CommApiController;
use App\Http\Controllers\ComunneApiController;
use App\Http\Controllers\ElecteurApiController;
use App\Http\Controllers\ListElectoralApiController;
use App\Http\Controllers\ListElectoralController;
use App\Http\Controllers\RegionApiController;
use App\Http\Controllers\RegionController;
use App\Http\Controllers\VoterApiController;
use App\Models\ListeElectoral;
use App\Models\Region;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('regions', RegionApiController::class,[
    'only' => ['create', 'show','index','destroy']
]);
Route::resource('communes', ComunneApiController::class,[
    'only' => ['create', 'show','index','destroy','find']
]);
Route::resource('centres', CentreVoteApiController::class,[
    'only' => ['create', 'show','index','destroy']
]);
Route::get("/communes/find/{region}", [App\Http\Controllers\ComunneApiController::class, 'find'] )->name('find');


Route::get("/communes/findcentre/{commune}", [App\Http\Controllers\ComunneApiController::class, 'findcentre'] )->name('findcentre');
// Route::post("/electeurs/create", [App\Http\Controllers\ElecteurApiController::class, 'create'] )->name('electeurs.create');


Route::apiResource('electeurs', ElecteurApiController::class,[
    'only' => ['show','index','destroy','create','store','update']
]);

Route::apiResource('voter', VoterApiController::class,[
    'only' => ['show','index','destroy','create','store']
]);

Route::apiResource('comm', CommApiController::class,[
    'only' => ['show','index','destroy','create','store','update']
]);

Route::resource('candidats', ListElectoralApiController::class,[
    'only' => ['show','index','destroy','create','store','update']
]);

Route::resource('annees', AnneeApiController::class,[
    'only' => ['show','index','destroy','create','store','update']
]);
Route::resource('administrateur', AdministrateurApiControlleur::class,[
    'only' => ['show','index','destroy','create','store','update']
]);

Route::get("/arrondissement/findcommune/{centre}", [App\Http\Controllers\ComunneApiController::class, 'findcommune'] )->name('findcommune');

Route::post("/administrateur/{email}/{mdp}", [App\Http\Controllers\AdministrateurApiControlleur::class, 'findAdministrateur'] )->name('findAdministrateur');
Route::get("/annee/encours", [App\Http\Controllers\AnneeApiController::class, 'findAnneeVote'] )->name('findAnneeVote');
Route::get("/candidat/{cni}", [App\Http\Controllers\ListElectoralApiController::class, 'findcandidats'] )->name('findcandidats');
Route::get("/electeur/{cni}", [App\Http\Controllers\ElecteurApiController::class, 'findelecteur'] )->name('findelecteur');
Route::get("count", [App\Http\Controllers\StatistiqueApiController::class, 'countvotes'] )->name('countvotes');
Route::get("countcc/{commune}", [App\Http\Controllers\StatistiqueApiController::class, 'countvotes_bycommune'] )->name('countvotes_bycommune');
Route::get("countcr/{region}", [App\Http\Controllers\StatistiqueApiController::class, 'countvotes_byregion'] )->name('countvotes_byregion');
Route::get("countvr/{region}", [App\Http\Controllers\StatistiqueApiController::class, 'countvotant_byregion'] )->name('countvotant_byregion');
Route::get("commune/{region}", [App\Http\Controllers\StatistiqueApiController::class, 'findcommune_bynameregion'] )->name('findcommune_bynameregion');
Route::get("inscrit/{commune}", [App\Http\Controllers\StatistiqueApiController::class, 'nombre_inscrit_bycommune'] )->name('nombre_inscrit_bycommune');
Route::get("votant/{commune}", [App\Http\Controllers\StatistiqueApiController::class, 'nombre_votant_bycommune'] )->name('nombre_votant_bycommune');
Route::get("votant/region/{region}", [App\Http\Controllers\StatistiqueApiController::class, 'nombre_votant_byregion'] )->name('nombre_votant_byregion');
Route::get("inscrit/region/{region}", [App\Http\Controllers\StatistiqueApiController::class, 'nombre_inscrit_byregion'] )->name('nombre_inscrit_byregion');
Route::get("codeCommune/{commune}", [App\Http\Controllers\StatistiqueApiController::class, 'findCodeCommByLibelle'] )->name('findCodeCommByLibelle');