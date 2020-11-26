@extends('layout.app')
@section('title')

@foreach($singleProduct as $singleProducts)

{{$singleProducts->title}}
@endforeach

@endsection
@section('content')


@include('shop-component.Hero')

@foreach($singleProduct as $singleProduct)
<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">

            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">

                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large" src="{{$singleProduct->images}}" alt="">
                    </div>

                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="{{$singleProduct->images}}" src="{{$singleProduct->images}}" alt="">
                        <img data-imgbigurl="{{$singleProduct->images}}" src="{{$singleProduct->images}}" alt="">
                        <img data-imgbigurl="{{$singleProduct->images}}" src="{{$singleProduct->images}}" alt="">
                        <img data-imgbigurl="{{$singleProduct->images}}" src="{{$singleProduct->images}}" alt="">
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>{{$singleProduct->title}}</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 reviews)</span>
                    </div>
                    <div class="product__details__price">${{$singleProduct->price}}</div>
                    <input hidden type="text" id="pid" value="{{$singleProduct->id}}">
                    <p>{{$singleProduct->description}}</p>

         <!--
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input id="quantity" type="text" value="1">
                            </div>
                        </div>
                    </div>

                    <a id="addtocart" class="primary-btn">ADD TO CART</a>
                    <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
           -->         
                    <a id="wholesalesView" class="primary-btn ml-5 text-decoration-none" href="{{url("/wholeSalesviewPage")}}">Contact For Wholesales</a>
                    <ul>
                        <li><b>Availability</b> <span>In Stock</span></li>
                        <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                        <li><b>Weight</b> <span>0.5 kg</span></li>
                        <li><b>Share on</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Products Description</a>
                        </li>

                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc text-center">
                                <p>
                                
                                <?php if ($singleProduct): ?>
                                
                                {!! nl2br(e($singleProduct->description)) !!}
                                
                                <?php endif; ?>
                                
                                
                                </p>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
@endforeach
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Related Product</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="{{asset('client/images')}}/product/product-1.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="{{asset('client/images')}}/product/product-2.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="{{asset('client/images')}}/product/product-3.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="{{asset('client/images')}}/product/product-7.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Product Section End -->




@endsection




@section('script')
<script type="text/javascript">
    $('#addtocart').click(function() {

        var pid = $('#pid').val();
        var quantity = $('#quantity').val();

        axios.post('/cartproduct', {
                pid: pid,
                quantity: quantity
            })
            .then(function(response) {
                if (response.status = 200) {
                    console.log(response);
                    toastr.success('Product added to cart.');
                    location.href="/checkout";
                } else {
                    console.log(response);
                    toastr.error('response failed.');
                }
            })
            .catch(function(error) {
                console.log(error);
                toastr.error('something went wrong.');
            });

          
    })
</script>


@endsection