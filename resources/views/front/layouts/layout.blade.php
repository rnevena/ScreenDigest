<!DOCTYPE html>
<html>
{{--Head Section--}}
@include('front.fixed.head')

<body id="page-top" data-spy="scroll" data-target=".navbar">
<div id="main-wrapper">
    <!-- Page Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>
    <!-- preloader -->

    <div class="uc-mobile-menu-pusher">
        <div class="content-wrapper">
{{--            Navigation Section--}}
            @include('front.fixed.navigation')
            <!-- header_section_wrapper -->

            @yield('content')

            @include('front.fixed.footer')
        </div>
        <!-- #content-wrapper -->

    </div>
    <!-- .offcanvas-pusher -->

    <a href="#" class="crunchify-top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>

    <!-- .uc-mobile-menu -->

</div>
<!-- #main-wrapper -->
{{--Scripts Section--}}
@include('front.fixed.scripts')
</body>
</html>
