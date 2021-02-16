<?php

namespace App\Http\Controllers;

use DB;
use App\Post;

class PostsController extends Controller
{
    public function show($slug){
        /* $posts = [
            'my-post' =>'Hello post one',
            'my-second-post' => 'Hello second post'
        ]; */

        //$post = DB::table('posts')->where('slug', $slug)->first();
        //d($post);

        /*
        if we don't use orFail
        if(! $post) {
            abort(404);
        } */
        $post = Post::where('slug', $slug)->firstOrFail();
        return view('post', [
            'post' => $post
        ]);
    }


}
