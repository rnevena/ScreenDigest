@extends('front.layouts.layout')
@section('title') Dashboard @endsection
@section('content')
    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>{{$user->name}}  {{$user->surname}}</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="content mt-3">

        <h1>User activities</h1>
        <div class="card-body">
            <div class='col-md-4 '>
                <select name="sort" class="B border-bottom-only" id="sort">
                    <option value="default" selected >Sort By</option>
                    <option value="DESC">Date: Newest</option>
                    <option value="ASC">Date: Oldest</option>
                </select>

                <select name="filter"  id="filter">
                    <option value="default" selected >Filter By</option>
                    @foreach($activityList as $aL)
                        <option value="{{$aL->activity}}">{{$aL->activity}}</option>
                    @endforeach
                </select>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">First name</th>
                    <th scope="col">Last name</th>
                    <th scope="col">Activity</th>
                    <th scope="col">IP address</th>
                    <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody id="tbody_activities">
{{--                @foreach($activities as $a)--}}
{{--                    <tr>--}}
{{--                        <td>{{$a->user_id}}</td>--}}
{{--                        <td>{{$a->activity}}</td>--}}
{{--                        <td>{{$a->ip}}</td>--}}
{{--                        <td>{{$a->date}}</td>--}}
{{--                    </tr>--}}
{{--                @endforeach--}}
                </tbody>
            </table>
            <div>{{$activities->links('vendor.pagination.bootstrap-4')}}</div>
        </div>

    </div> <!-- .content -->



@endsection
@if($user->role_id==1)
    @section('additional')
    <script src="{{asset('assets/front/js/admin.js')}}"></script>
    @endsection
@elseif($user->role_id==2)
    <script src="{{asset('assets/front/js/editor.js')}}"></script>
@endif
