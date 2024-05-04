<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PostPatchController extends Controller
{

    public function __invoke(Request $request, Post $post)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'teaser' => 'nullable',
            'body' => 'nullable',
            'slug' => 'required|string|unique:posts,slug,' . $post->id,
            'published' => 'boolean'
        ]);
    
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $post->update($request->only('title', 'teaser', 'body', 'published', 'slug'));
    }
}
