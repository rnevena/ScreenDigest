<section id="header_section_wrapper" class="header_section_wrapper">
    <div class="container">
        <div class="header-section">
            <div class="row">
                <div class="col-md-4">
                    <div class="left_section">
                                            <span class="date">

                                            </span>
                        <!-- Date -->
                        <span class="time">
                                                movie news and trusted reviews
                                            </span>
                        <!-- Time -->
                        <div class="social">
                            <a href="https://www.facebook.com" class="icons-sm fb-ic"><i class="fa fa-facebook"></i></a>
                            <!--Twitter-->
                            <a href="https://www.twitter.com" class="icons-sm tw-ic"><i class="fa fa-twitter"></i></a>
                            <!--Google +-->
                            <a href="https://www.instagram.com" class="icons-sm inst-ic"><i class="fa fa-instagram"> </i></a>
                            <!--Linkedin-->

                            <a href="{{asset('dokumentacija.pdf')}}" class="icons-sm rss-ic" style="cursor: pointer"> doc</a> <span>&nbsp;</span>
                            <a href="{{asset('screendigest.sql')}}" class="icons-sm rss-ic" style="cursor: pointer"> database</a>
                        </div>
                        <!-- Top Social Section -->
                    </div>
                    <!-- Left Header Section -->
                </div>
                <div class="col-md-4">
                    <div class="logo">
                        <a href="{{route('home')}}"><img src="{{asset('assets/front/img/logo.png')}}" alt="Tech NewsLogo"></a>
                    </div>
                    <!-- Logo Section -->
                </div>
                <div class="col-md-4">
                    <div class="right_section">
                        <ul class="nav navbar-nav">
                            @if(!(isset($user)))
                            <li><a href="{{route('login')}}">Login</a></li>
                            <li><a href="{{route('register')}}">Register</a></li>
                            @else
                                @if(($user->role_id==1))
                                    <li><a href="{{route('dashboard')}}">Admin</a></li>
                                    <li><a href="{{route('logout')}}">Logout</a ></li>
                                @elseif( ($user->role_id==2))
                                    <li><a href="{{route('dashboard')}}">Editor</a></li>
                                    <li><a href="{{route('logout')}}">Logout</a></li>
                                @else
                                <li><a href="{{route('logout')}}">Logout</a></li>
                                @endif
                            @endif
                        </ul>
                        <!-- Language Section -->

                        @yield('search')
                        <!-- Search Section -->
                    </div>
                    <!-- Right Header Section -->
                </div>
            </div>
        </div>
        <!-- Header Section -->

        <div class="navigation-section">
            <nav class="navbar m-menu navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="#navbar-collapse-1">
                        <ul class="nav navbar-nav main-nav">
                            <li><a href="{{route('home')}}">Home</a></li>
                            @foreach($categories as $c)
                                <li><a href="{{route('postCat', ['category'=>$c->id])}}">{{$c->name}}</a></li>
                            @endforeach
                            <li><a href="{{route('contact')}}">Contact us</a></li>
                            <li><a href="{{route('author')}}">Author</a></li>
{{--                            <li class="dropdown m-menu-fw"><a href="#" data-toggle="dropdown" class="dropdown-toggle">More--}}
{{--                                    <span><i class="fa fa-angle-down"></i></span></a>--}}
{{--                                <ul class="dropdown-menu">--}}
{{--                                    <li>--}}
{{--                                        <div class="m-menu-content">--}}
{{--                                            <ul class="col-sm-3">--}}
{{--                                                <li class="dropdown-header">Widget Haeder</li>--}}
{{--                                                <li><a href="#">Awesome Features</a></li>--}}
{{--                                                <li><a href="#">Clean Interface</a></li>--}}
{{--                                                <li><a href="#">Available Possibilities</a></li>--}}
{{--                                                <li><a href="#">Responsive Design</a></li>--}}
{{--                                                <li><a href="#">Pixel Perfect Graphics</a></li>--}}
{{--                                            </ul>--}}
{{--                                            <ul class="col-sm-3">--}}
{{--                                                <li class="dropdown-header">Widget Haeder</li>--}}
{{--                                                <li><a href="#">Awesome Features</a></li>--}}
{{--                                                <li><a href="#">Clean Interface</a></li>--}}
{{--                                                <li><a href="#">Available Possibilities</a></li>--}}
{{--                                                <li><a href="#">Responsive Design</a></li>--}}
{{--                                                <li><a href="#">Pixel Perfect Graphics</a></li>--}}
{{--                                            </ul>--}}
{{--                                            <ul class="col-sm-3">--}}
{{--                                                <li class="dropdown-header">Widget Haeder</li>--}}
{{--                                                <li><a href="#">Awesome Features</a></li>--}}
{{--                                                <li><a href="#">Clean Interface</a></li>--}}
{{--                                                <li><a href="#">Available Possibilities</a></li>--}}
{{--                                                <li><a href="#">Responsive Design</a></li>--}}
{{--                                                <li><a href="#">Pixel Perfect Graphics</a></li>--}}
{{--                                            </ul>--}}
{{--                                            <ul class="col-sm-3">--}}
{{--                                                <li class="dropdown-header">Widget Haeder</li>--}}
{{--                                                <li><a href="#">Awesome Features</a></li>--}}
{{--                                                <li><a href="#">Clean Interface</a></li>--}}
{{--                                                <li><a href="#">Available Possibilities</a></li>--}}
{{--                                                <li><a href="#">Responsive Design</a></li>--}}
{{--                                                <li><a href="#">Pixel Perfect Graphics</a></li>--}}
{{--                                            </ul>--}}
{{--                                        </div>--}}
{{--                                    </li>--}}
{{--                                </ul>--}}
{{--                            </li>--}}
                        </ul>
                    </div>
                    <!-- .navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
            <!-- .nav -->
        </div>
        <!-- .navigation-section -->
    </div>
    <!-- .container -->
</section>
