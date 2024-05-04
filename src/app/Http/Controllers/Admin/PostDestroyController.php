<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;

class PostDestroyController extends Controller
{
    public function __invoke(Post $post)
    {
        $post->delete();
    }
}
