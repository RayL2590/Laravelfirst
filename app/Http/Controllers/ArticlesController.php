<?php

namespace App\Http\Controllers;

use App\Article;
use Illuminate\Http\Request;

class ArticlesController extends Controller
{
    public function index()
    {
        //render a list of a resource
        $articles = Article::latest()->get();

        return view('articles.index', [
            'articles' => $articles
        ]);
    }

    public function show($id){
        //show a single resource
        $article = Article::find($id);
        return view('articles.show', [
            'article' => $article
        ]);
    }

    public function create()
    {
        //shows a view to create a new resource
        return view('articles.create');
    }

    public function store()
    {
        request()->validate([
            'title' => ['required', 'min:3', 'max:255'],
            'excerpt' => 'required',
            'body' => 'required'
        ]);
        //Persist the new resource
        $article = new Article();

        $article->title = \request('title');
        $article->excerpt = \request('excerpt');
        $article->body = \request('body');

        $article->save();
        return redirect('/articles');
    }

    public function edit($id)
    {
        $article = Article::find($id);
        return view('articles.edit', [
            'article' => $article,
        ]);
    }

    public function update($id)
    {
        request()->validate([
            'title' => ['required', 'min:3', 'max:255'],
            'excerpt' => 'required',
            'body' => 'required'
        ]);

        $article = Article::find($id);
        $article->title = \request('title');
        $article->excerpt = \request('excerpt');
        $article->body = \request('body');

        $article->save();
        return redirect('/articles/' . $article->id);
    }

    public function destroy()
    {

    }

}
