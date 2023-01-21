@extends('front.layouts.layout')
@section('title') {{$category->name}} | Screen Digest @endsection
@section('search')
    <input type="hidden" name="cat_id" id="cat_id" value="{{$category->id}}">
    <ul class="nav-cta hidden-xs">
        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
                    class="fa fa-search"></i></a>
            <ul class="dropdown-menu">
                <li>
                    <div class="head-search">
                        <form role="form">
                            <!-- Input Group -->
                            <div class="input-group">
                                <input type="text" class="form-control" id="input_search" name="input_search"
                                       placeholder="Type Something">
                                <span class="input-group-btn">
                                                                            <button type="button" id="btn_search" name="btn_search"
                                                                                    class="btn btn-primary">Search
                                                                            </button>
                                                                        </span>
                            </div>
                        </form>
                    </div>
                </li>
            </ul>
        </li>
    </ul>
@endsection
@section('content')
    <section id="entity_section" class="entity_section">
        <div class="container">
            <div class="row">
                <div class="col-md">
                    <div class="entity_wrapper">
                        <div class="entity_title header_purple">
                            <h1 style="background-color:rgb(231, 55, 55);padding:2px;width:30%;font-size: 30px;">{{$category->name}}</h1>
                        </div>
                        <br>
                    </div>
                    <div class="row" id="output_search">
                    </div>

                </div>
                <div class="col-md">
                <h3 style="font-size: 20px;">{{$posts_paginate->links('vendor.pagination.bootstrap-4')}}</h3>
                </div>
                </div>
                <!-- Left Section -->


            </div>
            <!-- row -->

        </div>
        <!-- container -->

    </section>
@endsection

@section('additional')
    <script src="{{asset('assets/front/js/posts.js')}}"></script>
    <script type="text/javascript">
        const urlImg = '{{URL::asset('assets/front/img/')}}';
        const url = '<?php echo e(url('/')); ?>';
    </script>
@endsection
