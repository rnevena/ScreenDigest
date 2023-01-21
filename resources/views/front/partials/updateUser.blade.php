@extends('front.layouts.layout')
@section('title') User update | Screen Digest @endsection
@section('content')

    <section id="category_section" class="category_section">
        <div class="container">
            <div class="row">
                <form method="POST" action="{{route('updateProfileInfo',['user'=>$userTU->id])}}"  >
                    @csrf
                    @method("PUT")
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <!-- route(updateUserInfo)}} -->
                    @error('name')
                    <div class="text-danger"> {{$message}} </div>
                    @enderror
                    <input type="text" name="name" class="form-control form-control-sm" value="@if(request()->routeIs('dashboard') ) {{$user->name}}@else{{$userTU->name}}@endif"> <br/>

                    @error('surname')
                    <div class="text-danger"> {{$message}} </div>
                    @enderror
                    <input type="text" name="surname" class="form-control form-control-sm" value="@if(request()->routeIs('dashboard') ) {{$user->surname}}@else{{$userTU->surname}}@endif"> <br/>

                    {{--<input type="email" name="email" class="form-control form-control-sm" value="@if(request()->routeIs('userProfile') ) {{$user->email}}@else{{$userTU->email}}@endif"> <br/>--}}
                    @if((request()->routeIs('adminUserUpdate')))
                        <select class="form-control mb-2" id='catupdate' name='caid'>
                            @foreach($roles as $u)
                                <option @if($u->id == $userTU->role_id) selected @endif value='{{$u->id}}'>{{$u->name}} {{$u->surname}}</option>
                            @endforeach
                        </select>
                    @endif
                    <button type="submit" name="submit" class="btn B rounded mt-2" > Update </button>
                </form>
                @if(!(request()->routeIs('adminUserUpdate')))
                    <button class="btn B rounded updateInfoShow">Cancel</button>
                @endif
            </div>
            <!-- Row -->

        </div>
        <!-- Container -->

    </section>
    <!-- Category News Section -->

@endsection
