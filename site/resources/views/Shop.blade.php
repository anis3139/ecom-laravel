@extends('layout.app')

@section('content')


    <!-- Hero Section Begin -->
    @include('shop-component.Hero')
    <!-- Hero Section End -->


    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
            @include('shop-component.Sidebar')
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Sale Off</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                             
                           @foreach($results as $result)
                             @if(!null==$result->offer)
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="{{$result->images}}">
                                            <div class="product__discount__percent">
                                                
                                           <?php
                                                 $price= $result->price;   
                                                 $offer_price= $result->offer;
                                                 $discount=  ($price- $offer_price)*100/$price;
                                                 $discount = (int)$discount;
                                                 echo  $discount." %";
                                            ?>
                                           
                                            </div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>{{$result->category_name}}</span>
                                            <h5><a href="/shop/{{$result->slug}}">{{$result->title}}</a></h5>
                                            <div class="product__item__price">${{$result->offer}} <span>${{$result->price}}</span></div>
                                        </div>
                                    </div>
                                </div>
                                @endif
                              @endforeach
                                
                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @foreach($results as $result)
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="{{$result->images}}">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="{{route('product.view', $result->slug)}}">{{$result->title}}</a></h6>
                                    <h5>${{$result->price}}</h5>
                                </div>
                            </div>
                        </div>
                       @endforeach
                       
                    </div>
                    <div class="text-center">
                    {{ $results->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->











@endsection