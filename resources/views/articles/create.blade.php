@extends('layout')
@section('head')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.css" rel="stylesheet" />
    @endsection
@section('content')
    <div id="wrapper">
        <div id="page" class="container">
            <h1 class="heading has-text-weight-bold is-size-4">New Article</h1>
            <form method="POST" action="/articles">
                @csrf
                <div class="field">
                    <label for="title" class="label">Title</label>
                    <div class="control">
                        <input type="text"
                               class="input {{$errors->has('title') ?'is-danger' : ''}}"
                               name="title"
                               id="title"
                               value="{{old('title')}}"
                               >
                        @if($errors->has('title'))
                        <p class="help is-danger">{{$errors->first('title')}}</p>
                            @endif
                    </div>
                </div>
                <div class="field">
                    <label for="excerpt" class="label">Excerpt</label>
                    <div class="control">
                        <textarea class="textarea @error('excerpt') is-danger @enderror"
                                  name="excerpt"
                                  id="excerpt"
                                  >{{old('excerpt')}}</textarea>
                        @error('excerpt')
                        <p class="help is-danger">{{$errors->first('excerpt')}}</p>
                        @enderror
                    </div>
                </div>
                <div class="field">
                    <label for="body" class="label">Body</label>
                    <div class="control">
                        <textarea class="textarea"
                                  class="input"
                                  name="body"
                                  id="body"
                                  >{{old('body')}}</textarea>
                        @error('body')
                        <p class="help is-danger">{{$errors->first('body')}}</p>
                        @enderror
                    </div>
                </div>
                <div class="field is-grouped">
                    <div class="control">
                        <button type="submit" class="button is-link">
                            Submit
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
