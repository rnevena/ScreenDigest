@foreach($cat as $c)
<div class="category_section">
    <h1 style="background-color:rgb(231, 55, 55);padding:2px;width:30%;"><a href="{{route('postCat', ["category" => $c->id])}}" target="_self">{{$c->name}} </a> </h1>
    <!----article_title------>
    <div class="category_article_wrapper">
        <div class="row">
            @foreach($c->posts as $cp)
            <div class="col-md-6" style="height:350px;">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="{{route('post', ["post" => $cp->id])}}" target="_self"><img class="img-responsive" src="{{asset('assets/front/img/'.$cp->img)}}"  width="100%" height="100%"
                                                                  alt="{{$cp->title}}">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <div class="category_article_title">
                        <h2><a href="{{route('post', ["post" => $cp->id])}}" target="_self">{{$cp->title}}</a></h2>
                    </div>
                    <!-- category_article_title -->
                    <div class="article_date"><p>{{ date('d F y H:i', strtotime($cp->date)) }}</p>
                    </div>
                    <!-- article_date -->

{{--                    <div class="category_article_content">--}}

{{--                    </div>--}}
                    <!-- category_article_content -->

{{--                    <div class="media_social">--}}
{{--                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>--}}
{{--                    </div>--}}
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->
            @endforeach
        </div>
        <!-- row -->
    </div> <hr>


{{--        <nav aria-label="Page navigation" class="pagination_section">--}}
{{--            <ul class="pagination">--}}
{{--                <li>--}}
{{--                    <a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a>--}}
{{--                </li>--}}
{{--                <li><a href="#">1</a></li>--}}
{{--                <li><a href="#">2</a></li>--}}
{{--                <li><a href="#">3</a></li>--}}
{{--                <li><a href="#">4</a></li>--}}
{{--                <li><a href="#">5</a></li>--}}
{{--                <li>--}}
{{--                    <a href="#" aria-label="Next" class="active"> <span aria-hidden="true">&raquo;</span> </a>--}}
{{--                </li>--}}
{{--                <li>--}}
{{--                    <a href="#">More News</a>--}}
{{--                </li>--}}
{{--            </ul>--}}
{{--        </nav>--}}
</div>
@endforeach

