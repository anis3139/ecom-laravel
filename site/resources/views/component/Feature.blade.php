<section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    @foreach( $feature_products as  $feature_product)
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="{{$feature_product->images}}">
                            
                            <h5><a href="{{route('product.view', $feature_product->slug)}}">{{$feature_product->title}}</a></h5>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>