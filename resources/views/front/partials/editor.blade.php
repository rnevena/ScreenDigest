
<h1>Update post</h1>
<div class="row">
    <form action='{{route('updatePostPage')}}' method='get'>
        <label for='pid'>Select post to update</label>
        <select class="form-control" id='post' name='select'>
            <option value="X" >Select...</option>
            @foreach($posts as $post)
                <option value="{{$post->id}}"> {{$post->title}} </option>
            @endforeach
        </select>
        @error('select')
        <div class="text-danger"> {{$message}} </div>
        @enderror
        <br><input type='submit' name='update' class='btn B rounded mx-auto mt-3' value='UPDATE'/>
{{--        ovde dodati formu za insert i delete, ne parčati--}}
    </form>
</div>
<br>
<h1>Delete post</h1>
<div class="row">
    <form action='{{route('deletePost')}}' method='post'>
        @method('delete')
        @csrf
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <label for='selectUTD'>Select post to delete</label>
        <select class="form-control" id='pdelete' name='selectUTD'>
            <option value="X" >Select...</option>
            @foreach($posts as $post)
                <option value="{{$post->id}}"> {{$post->title}} </option>
            @endforeach
        </select>
        @error('selectUTD')
        <div class="text-danger"> {{$message}} </div>
        @enderror
        <br><input type='submit' name='delete' class='btn B rounded mx-auto mt-3' value='DELETE'/>
        {{--        ovde dodati formu za insert i delete, ne parčati--}}
    </form>
</div>
 <br>
<h1>Add a post</h1>

    <form enctype="multipart/form-data"  action="{{route('insertPost')}}" method="POST" >
        @csrf
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />

        <label for='title'>Insert a title</label>
        <input class="form-control" type="text" name="title"/>
        @error('title')
        <div class="text-danger"> {{$message}} </div>
        @enderror

        <label for='image'>Upload an image</label>
        <input class="form-control" type="file" name="image"/>
        @error('image')
        <div class="text-danger"> {{$message}} </div>
        @enderror

        <label for='content'>Write your content</label>
        <textarea class="form-control" cols="70" name="content"></textarea>
        @error('content')
        <div class="text-danger"> {{$message}} </div>
        @enderror
        <div>
            <label for='genre[]'>Categories:</label> <br/>

            @foreach($categories as $category)
                {{--<input class="" id="{{$genre->id}}" type="checkbox" name="genre[]" value="{{$genre->id}}" @if(!(request()->routeIs('userProfile')) && in_array($genre->id, $array))) checked @endif"/> <span>{{$genre->name}}</span> <br/>--}}
                <input class="" id="{{$category->id}}" type="checkbox" name="category[]" value="{{$category->id}}" /> <span>{{$category->name}}</span> <br/>
            @endforeach
            @error('genre')
            <div class="text-danger"> {{$message}} </div>
            @enderror
        </div>
        <input type='submit' name='post' class='btn B rounded mx-auto mt-3' value='ADD' />
    </form>



