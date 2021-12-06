<?php

use App\Http\Controllers\CentreVoteApiController;
use App\Http\Controllers\ComunneApiController;
use App\Http\Controllers\RegionApiController;
use App\Http\Controllers\RegionController;
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
    'only' => ['create', 'show','index','destroy']
]);
Route::resource('centres', CentreVoteApiController::class,[
    'only' => ['create', 'show','index','destroy']
]);
