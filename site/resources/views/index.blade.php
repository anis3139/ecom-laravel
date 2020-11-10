@extends('layout.app')

@section('content')


    
    <!-- Hero Section Begin -->
    @include('component.hero')
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    @include('component.Feature')
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Featured Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                         @foreach($catResults as $catResult)
                            <li data-filter=".{{$catResult->category_name}}">{{$catResult->category_name}}</li>
                          @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div id="myBox" class="row featured__filter">
           
                @foreach($results as $result)
                <a id="xx" style="  display: none !important; "  href="{{route('product.view', $result->slug)}}">
                    <div   class="col-lg-3 col-md-4 col-sm-6 mix {{$result->category_name}}">
                 
                        <div class="featured__item">
                            <div style="cursor:pointer;" class="featured__item__pic set-bg" data-setbg="{{$result->images}}">
                           
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                        
                            <div class="featured__item__text">
                                <h6><a href="{{route('product.view', $result->slug)}}">{{$result->title}}</a></h6>
                                <h5>{{$result->price}}</h5>
                                <h5>{{$result->category_name}}</h5>
                                <h5>{{$result->brand_name}}</h5>
                            </div>
                        </div>
                        
                    </div>
                    </a>
                  
               
                @endforeach
          
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="{{asset('client/images')}}/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="{{asset('client/images')}}/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

  
    


    @endsection


 @section('script')
<script type="text/javascript">
      $("#myBox").click(function() {
    window.location = $(this).find("a").attr("href"); 
    return false;
    });
</script>
      

@endsection