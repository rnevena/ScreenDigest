@extends('front.layouts.layout')
@section('title') Post update | Screen Digest @endsection
@section('content')
<div class="card-body">
    <div class="flex-md-row" style="padding:5%;">
        <div>
        <div id="psotInformation">
            <div id="psotInfo">
                <label class="h1" for="form"> Update this post </label>
                <form  name="form" enctype="multipart/form-data"  action="{{route('updatePost', ["post" => $post->id])}}" method="POST" >
                        @method('PUT')
                    @csrf
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                    <label for='title'>Insert a title</label>
                    <input class="form-control" type="text" name="title" value="{{$post->title}}"/>
                    @error('title')
                    <div class="text-danger"> {{$message}} </div>
                    @enderror

                    <label for='image'>Upload an image</label>
                        <p>Old image:</p>
                        <img src="{{asset('assets/front/img/'.$post->img)}}" alt="{{$post->title}}"/>
                    <input class="form-control" type="file" name="image"/>
                    @error('image')
                    <div class="text-danger"> {{$message}} </div>
                    @enderror

                    <label for='content'>Write your content</label>
                    <textarea class="form-control" cols="70" name="content">{{$post->content}}</textarea>
                    @error('content')
                    <div class="text-danger"> {{$message}} </div>
                    @enderror
                    <div>
                        <label for='genre[]'>Categories:</label> <br/>

                        @foreach($categories as $category)
                            {{--<input class="" id="{{$genre->id}}" type="checkbox" name="genre[]" value="{{$genre->id}}" @if(!(request()->routeIs('userProfile')) && in_array($genre->id, $array))) checked @endif"/> <span>{{$genre->name}}</span> <br/>--}}
                            <input class="" id="{{$category->id}}" type="checkbox" name="category[]" value="{{$category->id}}" @if (isset($post) && in_array($category->id,  $post->categories()->pluck('category_id')->toArray())) checked @elseif(is_array(old('category') && in_array($category->id, old('category')))) @endif"/> <span>{{$category->name}}</span> <br/>
                        @endforeach
                        @error('genre')
                        <div class="text-danger"> {{$message}} </div>
                        @enderror
                    </div>
                    <input type='submit' name='post' class='btn B rounded mx-auto mt-3' value='UPDATE' />
                </form>
            </div>
        </div>
    </div>
    </div>
</div>
    <br>
@endsection
