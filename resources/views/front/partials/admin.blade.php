<h1>Activities</h1>
<div class="card-body">
    <div class='col-md-4 '>
        <select name="sort" id="sort">
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


<div class="row">
<h1>Update user</h1>
<div class='row'>
    <form action='{{route('adminUserUpdate')}}' method='get'>
        <label for='selectUTU'>Select user to update</label>
        <select class="form-control" id='pupdate' name='selectUTU'>
            <option value="X" >Select...</option>;
            @foreach($users as $u)
                <option value='{{$u->id}}'>{{$u->name}} {{$u->surname}}</option>
            @endforeach
        </select> <br>
        @error('selectUTU')
        <div class="text-danger"> {{$message}} </div>
        @enderror
        <input type='submit' name='update' class='btn B rounded mx-auto mt-3' value='UPDATE'/>
    </form>
</div> <br>
<h1>Delete user</h1>
<div class='row'>
    <form action='{{route('userDelete')}}' method='POST'>
        @method('DELETE')
        @csrf
        <label for='selectUTD'>Select a user to delete</label>
        <select class="form-control" id='uid' name='selectUTD'>
            <option value="X">Select...</option>;
            @foreach($users as $u)
                <option name="{{$u->id}}" value='{{$u->id}}'>{{$u->name}} {{$u->surname}}</option>
            @endforeach
        </select> <br>
        @error('selectUTD')
        <div class="text-danger"> {{$message}} </div>
        @enderror
        <input type='submit' name='delete' class='btn B rounded mx-auto mt-3' value='DELETE'/>
    </form>
</div>
</div>
<br>
<div class="row">
    <h1>Add user</h1>
    <form class="form-horizontal" method="POST" action="{{ route('addUser') }}" >
        @csrf
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <div class="form-group">
            <label>First name</label>
            <input id="fname" type="text" class="form-control" name="fname" >
            @error('fname')
            <div class="text-danger"> {{$message}} </div>
            @enderror
        </div>
        <div class="form-group">
            <label>Last name</label>
            <input id="lname" type="text" class="form-control" name="lname" >

            @error('lname')
            <div class="text-danger"> {{$message}} </div>
            @enderror
        </div>
        <div class="form-group">
            <label>Email address</label>
            <input id="email" type="text" class="form-control" name="email" >

            @error('email')
            <div class="text-danger"> {{$message}} </div>
            @enderror
        </div>
        <div class="form-group">
            <label>Password</label>
            <input id="password" type="password" class="form-control" name="password" >

            @error('password')
            <div class="text-danger"> {{$message}} </div>
            @enderror

        </div>
        <div class="form-group">
            <select class="mx-auto form-control w-50 mb-2" id='catupdate' name='rid'>
                <option value="X">Select...</option>
                @foreach($roles as $u)
                    <option name="{{$u->id}}" value='{{$u->id}}'>{{$u->name}}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn B rounded mx-auto mt-3" >ADD</button>
    </form>
</div>
<br>
<div class="row">
<h1>Update category</h1>
    <div class="row">
        <form action='{{route('categoryUpdate')}}' method='POST'>
            @method('PUT')
            @csrf
            <label for='caid'>Select a category to update (change name)</label>
            <select class="form-control mb-2" id='catupdate' name='caid'>
                <option value="X">Select...</option>;
                @foreach($categories as $u)
                    <option value='{{$u->id}}'>{{$u->name}}</option>
                @endforeach
            </select> <br>
            @error('caid')
            <div class="text-danger"> {{$message}} </div>
            @enderror
            <input type="text" name="secN" id="newCaid" class="form-control"><br>
            @error('secN')
            <div class="text-danger"> {{$message}} </div>
            @enderror
            <input type='submit' name='update' class='btn B rounded mx-auto mt-3' value='UPDATE'/>
        </form>
    </div><br>
    <h1>Delete category</h1>
    <div class="row">
        <form action='{{route('categoryDelete')}}' method='POST'>
            @method('DELETE')
            @csrf
            <label for='selectGTD'>Select a category to delete</label>
            <select class="form-control" id='catdelete' name='selectGTD'>
                <option value="X">Select...</option>;
                @foreach($categories as $u)
                    <option  value='{{$u->id}}'>{{$u->name}} </option>
                @endforeach
            </select>
            @error('selectGTD')
            <div class="text-danger"> {{$message}} </div>
            @enderror
            <br> <input type='submit' name='delete' class='btn B rounded mx-auto mt-3' value='DELETE'/>
        </form>
    </div> <br>
    <h1>Add category</h1>
    <div class="row">
        <form action='{{route('categoryInsert')}}' method='POST'>
            @csrf
            <label for='secI'>Add a category (insert a new name)</label>
            <input type='text' class='form-control' id='' name='secI'>
            @error('secI')
            <div class="text-danger"> {{$message}} </div>
            @enderror
            <br> <input type='submit' name='addCatBtn' class='btn B rounded mx-auto mt-3' value='ADD'/>
        </form>
    </div>
</div>
