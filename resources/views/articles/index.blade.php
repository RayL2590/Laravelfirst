@extends('layout')

@section('content')

<div id="wrapper">
	<div id="page" class="container">
		<div id="content">
            @foreach ($articles as $article)
			<div class="title">
                <h2><a href="/articles/{{ $article->id }}">{{ $article->title }}</a> </h2>
                <br>
            {{ $article->body }}
            @endforeach
		</div>
	</div>
</div>

@endsection
