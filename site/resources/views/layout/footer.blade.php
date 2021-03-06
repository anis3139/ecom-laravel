<footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div  style="width: 120px; height:80px !important;" class="footer__about__logo">
                            <a href="./"><img src="<?php if ($othersData) {echo $othersData->logo;}?>" alt=""></a>
                        </div>
                        <ul>
                            <li><?php if ($othersData): ?>
                                
                                {!! nl2br(e($othersData->address)) !!}
                                
                                <?php endif; ?>
                                </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="<?php if ($socialData) {echo $socialData->facebook;}?>"><i class="fa fa-facebook"></i></a>
                            <a href="<?php if ($socialData) {echo $socialData->instragram;}?>"><i class="fa fa-instagram"></i></a>
                            <a href="<?php if ($socialData) {echo $socialData->twitter;}?>"><i class="fa fa-twitter"></i></a>
                            <a href="<?php if ($socialData) {echo $socialData->youtube;}?>"><i class="fa fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved </i> by <a href="https://www.rainyforest.xyz" target="_blank">Rainy Forest</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="{{asset('client/images')}}/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>