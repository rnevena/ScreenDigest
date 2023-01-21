@extends('front.layouts.layout')
@section('title') Dashboard @endsection
@section('content')
    <div class="container">
        <div class="row">
                <div class="page-title" style="background-color:rgb(231, 55, 55); width:200px;">
                    <h1> User: {{$user->name}}  {{$user->surname}}</h1>
                </div>
        </div>


<div class="row">
@if($user->role_id==1)
    @include('front.partials.admin')
    @elseif($user->role_id==2)
    @include('front.partials.editor')
    @endif
</div>
    </div>

@if($user->role_id==1)
@section('additional')
    <script src="{{asset('assets/front/js/admin.js')}}"></script>
    <script type="text/javascript">
        const url = '<?php echo e(url('/')); ?>';
    </script>
@endsection
@elseif($user->role_id==2)
    <script src="{{asset('assets/front/js/editor.js')}}"></script>
            <script type="text/javascript">
                const url = '<?php echo e(url('/')); ?>';
            </script>
@endif
@endsection
