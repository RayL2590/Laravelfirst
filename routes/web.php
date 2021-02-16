<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/contact', function () {
    return view('contact');
});
Route::get('/articles', 'ArticlesController@index');
Route::post('/articles', 'ArticlesController@store');
Route::get('/articles/create', 'ArticlesController@create');
Route::get('/articles/{article}', 'ArticlesController@show');
Route::get('/articles/{article}/edit', 'ArticlesController@edit');
Route::put('/articles/{article}', 'ArticlesController@update');

Route::get('/about', function () {
    //$articles = App\Article::latest()->paginate(3);
    $articles = App\Article::take(3)->latest()->get();

    return view('about', [
        'articles' => $articles
    ]);
});

/*
Route::get('/posts/{post}', function ($post) {
     $posts = [
        'my-post' =>'Hello post one',
        'my-second-post' => 'Hello second post'
    ];

    if(! array_key_exists($post, $posts)){
        abort(404, 'Sorry that post does not exist');
    }

    return view('post', [
        'post' => $posts[$post]
    ]);
}); */

Route::get('/posts/{post}', 'PostsController@show');


/* Route::get('/test', function () {

    $name = request('name');

    return view('test', [
        'name' => $name
    ]);
}); */

