@extends('front.layouts.layout')
@section('title') {{$post->title}} | Screen Digest @endsection
@section('content')
    <div class="col-md-12" style="padding-left: 10%;">
        <br>
        <div class="entity_wrapper">
            <input type="hidden" name="post_id" id="post_id" value="{{$post->id}}">
            <div class="entity_title" >
                <h1 id="newsCode" data-id="{{$post->id}}" style="font-size: 40px;">{{$post->title}}</h1>
            </div>
            <!-- entity_title -->

            <div class="entity_meta" style="padding:3px;">
                <h5 style="font-size: 20px;">{{ date('d F y H:i', strtotime($post->date)) }}</h5>
                <h5> by: @foreach($post_users as $u) {{$u->name}} {{$u->surname}} @endforeach</h5>
            </div>
            <!-- entity_meta -->

            <div class="entity_thumb">
                <img class="img-responsive" style="width:1000px;" src="{{asset('assets/front/img/'.$post->img)}}" alt="{{$post->title}}">
            </div>
            <!-- entity_thumb -->

            <div class="entity_content col-md-10">
                <p style="font-size: large;line-height: 1.5;">
                    {{$post->content}}
                </p>
            </div>
            <!-- entity_content -->

            <div class="entity_footer col-md-8">
                <h5 style="font-size: 20px;padding:1%;">Categories</h5>
                <div class="entity_tag">

                    @foreach($post->categories as $c)

                    <span class="blank" style="padding:1%;"><a href="{{route('postCat', ["category" => $c->id])}}">{{$c->name}}</a></span>
                    @endforeach
                </div>
                <!-- entity_categories -->

            </div>
            <!-- entity_footer -->

        </div>
        <!-- entity_wrapper -->

        <div class="related_news col-md-8">
            <div class="entity_inner__title header_purple">
                <h2>Related News</h2>
            </div>
            <!-- entity_title -->

            <div class="row" id="related">
            </div>
        </div>
        <!-- Related news -->
        @include('front.partials.comments')

    </div>
@endsection
@section('additional')
    <script src="{{asset('assets/front/js/post.js')}}"></script>
    <script type="text/javascript">
        const urlImg = '{{URL::asset('assets/front/img/')}}';
        const url = '<?php echo e(url('/')); ?>';
    </script>
@endsection
