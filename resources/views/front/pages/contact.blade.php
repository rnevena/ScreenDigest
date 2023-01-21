@extends('front.layouts.layout')
@section('title') Contact | Screen Digest @endsection
@section('content')
    <div class="container">
        <div class="row col-md-8">
            <br>
            <h1>Let's get in  touch! We'll get to you as soon as possible.</h1>
            <br>
                <form method="GET" action="{{route('mail')}}">
                    <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Your Email" />
                        @error('email')
                        <div class="text-danger">
                            {{$message}}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <input type="text" name="subject" class="form-control" placeholder="Subject" />
                        @error('subject')
                        <div class="text-danger">
                            {{$message}}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <textarea name="message" class="form-control" rows="5" placeholder="Message"></textarea>
                        @error('message')
                        <div class="text-danger">
                            {{$message}}
                        </div>
                        @enderror
                    </div>
                    <div><button class="btn" type="submit">Send Message</button></div>
                </form>
        </div>
    </div>
@endsection
