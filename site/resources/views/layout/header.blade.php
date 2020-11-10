<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i><?php if ($othersData) {
                                                                    echo $othersData->email;
                                                                } ?></li>
                            <li><?php if ($othersData) {
                                    echo $othersData->title;
                                } ?></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="<?php if ($socialData) {
                                            echo $socialData->facebook;
                                        } ?>"><i class="fa fa-facebook"></i></a>
                            <a href="<?php if ($socialData) {
                                            echo $socialData->instragram;
                                        } ?>"><i class="fa fa-instagram"></i></a>
                            <a href="<?php if ($socialData) {
                                            echo $socialData->twitter;
                                        } ?>"><i class="fa fa-twitter"></i></a>
                            <a href="<?php if ($socialData) {
                                            echo $socialData->youtube;
                                        } ?>"><i class="fa fa-youtube"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img src="{{asset('client/images')}}/language.png" alt="">
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Spanis</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            @if ($message = Session::get('user'))
                            <a href="{{url('/logout')}}"><i class="fa fa-user"></i> Log Out</a>
                            @else
                            <a href="{{url('/login')}}"><i class="fa fa-user"></i> Login</a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div style="width: 120px; height:80px" class="header__logo">
                    <a href="./"><img src="<?php if ($othersData) {
                                                echo $othersData->logo;
                                            } ?>" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="/">Home</a></li>
                        <li><a href="./shop">Shop</a></li>
                      
                     
                        @if(Session::get('userid'))
                        <li><a href="{{url('orderlist')}}">Order</a></li>
                        @endif

                        <li><a href="/about">About Us</a></li>
                        <li><a href="/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>


            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <!-- <li><a href="#"><i class="fa fa-heart"></i> <span></span></a></li> -->
                        <li><a href="{{route('cart.list')}}"> <i class="fa fa-shopping-bag"></i> <span id="total_product"> </span></a></li>
                    </ul>
                    <div class="header__cart__price">Total: <span id="total_price"></span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>