@extends('front.layouts.layout')
@section('title') Home | Screen Digest @endsection
@section('content')

    <section id="category_section" class="category_section">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    @include('front.partials.regularSectionPosts', ['cat' => $categories])
                </div>
                <!-- Left Section -->

                <div class="col-md-4">
                    <div class="widget">
                        <div class="widget_title widget_black">
                            <h2>Latest</h2>
                        </div>
                        @foreach($latest as $l)
                        <div class="media">
                            <div class="media-left">
                                <a href="{{route('post', ['post'=>$l->id])}}"><img style="width:110px;" class="media-object" src="{{asset('assets/front/img/'.$l->img)}}" alt="{{$l->title}}"></a>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">
                                    <a href="{{route('post', ['post'=>$l->id])}}">{{$l->title}}</a>
                                </h3> <span class="media-date">{{ date('d F y H:i', strtotime($l->date)) }}</span>

                            </div>
                        </div>
                        @endforeach
                        <p>{{$posts_paginate->links()}}</p>
                    </div>
                    <!-- Latest News -->

                    <div class="widget reviews m30">
                        <div >
                            <h2>Special issue: guest editor John Doe</h2>
                        </div> <br>
                        @foreach($johndoe as $jd)
                        <div class="media">
                            <div class="media-left">
                                <a href="{{route('post', ['post'=>$jd->id])}}"><img style="width:110px;" class="media-object" src="{{asset('assets/front/img/'.$jd->img)}}" alt="{{$jd->title}}"></a>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">
                                    <a href="{{route('post', ['post'=>$jd->id])}}" >{{$jd->title}}</a>
                                </h3>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!--John Doe News -->

                    <div class="widget m30">
                        <div class="widget_title widget_black">
                            <h2>Most Commented</h2>

                            @foreach($comments as $c)
                        <div class="media">
                            <div class="media-left">
                                <a href="{{route('post', ['post'=>$c->id])}}"><img class="media-object" style="width:110px;" src="{{asset('assets/front/img/'.$c->img)}}" alt="{{$c->title}}"></a>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">
                                    <a href="{{route('post', ['post'=>$c->id])}}">{{$c->title}}</a>
                                </h3>

                                <div class="media_social">
                                    <span>{{$c->number}} comment(s)</span>
                                </div>
                            </div>
                        </div>
                            @endforeach

                    </div>
                    <!-- Most Commented News -->

                </div>
                <!-- Right Section -->

            </div>
            <!-- Row -->

        </div>
        <!-- Container -->

    </section>
    <!-- Category News Section -->

@endsection
@section('additional')
    <script src="{{asset('assets/front/js/index.js')}}"></script>
    <script type="text/javascript">
        const urlImg = '{{URL::asset('assets/front/img/')}}';
        const url = '<?php echo e(url('/')); ?>';
    </script>
@endsection
