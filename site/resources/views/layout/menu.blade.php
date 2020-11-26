
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="./"><img src="<?php if ($othersData) {
                                                echo $othersData->logo;
                                            } ?>" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
           <ul>
                        <!-- <li><a href="#"><i class="fa fa-heart"></i> <span></span></a></li> -->
                        <li><a href="{{route('cart.list')}}"> <i class="fa fa-shopping-bag"></i> <span id="total_product"> </span></a></li>
                    </ul>
                    <div class="header__cart__price">Total: <span id="total_price"></span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <p className="mt-1" id="google_translate_element"></p>
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
       <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./">Home</a></li>
                <li><a href="/shop">Shop</a></li>
                <!--<li><a href="#">Pages</a>-->
                <!--    <ul class="header__menu__dropdown">-->
                <!--        <li><a href="./shop-details.html">Shop Details</a></li>-->
                <!--        <li><a href="./shoping-cart.html">Shoping Cart</a></li>-->
                <!--        <li><a href="./checkout.html">Check Out</a></li>-->
                <!--        <li><a href="./blog-details.html">Blog Details</a></li>-->
                <!--    </ul>-->
                <!--</li>-->
                 <li><a href="/about">About Us</a></li>
               @if(Session::get('userid'))
                        <li><a href="{{url('orderlist')}}">Order</a></li>
                        @endif
                         <li><a href="{{url('/checkout')}}">Checkout</a></li>
                <li><a href="/contact">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
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
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i>Developed By <a href="http://rainyforest.xyz"> Rainy Forest</a></li>
            </ul>
        </div>
    </div>