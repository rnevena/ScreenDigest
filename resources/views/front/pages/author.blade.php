@extends('front.layouts.layout')
@section('title') Author | Screen Digest @endsection
@section('content')
    <div class="container">
        <br>
        <br>
        <div class="flex-column col-md-7">
            <div class="parcence">
            <img src="{{asset('assets/front/img/autor.png')}}" alt="author" width="300px" height="300px">
            </div>
        </div>
        <div class="flex-column col-md-3">
            <div class="parcence">
            <h1>My name is Nevena Radovanović. I enjoy making things look nice and perform well. Working hard to become an efficient front-end developer. </h1>
            </div>
        </div>
    </div>
@endsection
