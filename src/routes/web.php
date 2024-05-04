<?php

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Primero, define una ruta explícita para servir archivos JSON
Route::get('/locales/{locale}.json', function ($locale) {
    $path = resource_path("locales/$locale.json");
    if (file_exists($path)) {
        return response()->file($path);
    }
    abort(404);  // Devuelve un 404 si el archivo no existe
});

// Captura todas las demás rutas para la aplicación Vue, sin usar regex complicados
Route::get('/{any}', function () {
    return view('welcome');
})->where('any', '.*');  // Acepta cualquier otra ruta

