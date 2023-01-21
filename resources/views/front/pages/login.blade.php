<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<link href="{{asset('assets/front/img/icon.ico')}}" rel=icon>
<title>Login</title>
<head>
    @include('admin.fixed.head')
    @section('title')
        Login
    @endsection
</head>
<body class="bg-dark">


<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <form class="form-horizontal" method="POST" action="{{route('loginUser')}}" onSubmit="formCheck()">
                    @csrf
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="form-group">
                        <label>Email address</label>

                        <input id="email" type="email" class="form-control" name="email" v required autofocus>

                        @error('email')
                        <div class="text-danger"> {{$message}} </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input id="password" type="password" class="form-control" name="password" required>

                        @error('password')
                        <div class="text-danger"> {{$message}} </div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                    <div class="register-link m-t-15 text-center">
                        <p>Don't have account ? <a href="{{route('register')}}"> Register here</a></p>
                        <p><a style="color:gray;" href="{{route('home')}}">Go back to home page</a></p>
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>


<script src="{{ asset('assets/admin/js/vendor/jquery-2.1.4.min.js') }}"></script>
<script src="{{ asset('assets/admin/js/popper.min.js') }}"></script>
<script src="{{ asset('assets/admin/js/plugins.js') }}"></script>
<script src="{{ asset('assets/admin/js/main.js') }}"></script>
<script src="{{asset('assets/front/js/login.js')}}"></script>

</body>
</html>
