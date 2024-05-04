<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

// Rutas que requieren autenticación
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::prefix('admin')->group(function () {
        Route::get('/posts', App\Http\Controllers\Admin\PostIndexController::class);
        Route::post('/posts', App\Http\Controllers\Admin\PostStoreController::class);
        Route::get('/posts/{post:uuid}/edit', App\Http\Controllers\Admin\PostEditController::class);
        Route::patch('/posts/{post:uuid}', App\Http\Controllers\Admin\PostPatchController::class);
        Route::delete('/posts/{post:uuid}', App\Http\Controllers\Admin\PostDestroyController::class);
    });
});

// Rutas públicas
Route::get('/posts', App\Http\Controllers\PostIndexController::class);
Route::get('/posts/{post:slug}', App\Http\Controllers\PostShowController::class);
