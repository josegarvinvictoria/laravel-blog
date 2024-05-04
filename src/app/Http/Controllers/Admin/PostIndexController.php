<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Post;

class PostIndexController extends Controller
{
    
    public function __invoke()
    {
        return PostResource::collection(Post::get());
    }
}
