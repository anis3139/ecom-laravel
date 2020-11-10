@extends('Layout.app')
@section('title','checkout')

@section('extra-css')
<style>
    .mt-32 {
        margin-top: 32px;
    }
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


@endsection




@section('content')



<div>



    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
                    </h6>
                </div>
            </div>
            <div class="checkout__form ">
                <h4>Billing Details</h4>
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Full Name<span>*</span></p>
                                    <input type="text" value="{{$userinfo[0]->name}}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p> Username<span>*</span></p>
                                    <input type="text" value="{{$userinfo[0]->username}}">
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>Email<span>*</span></p>
                            <input type="text" value="{{$userinfo[0]->email}}">
                        </div>
                        <div class="checkout__input">
                            <p>Address<span>*</span></p>
                            <input type="text" placeholder="Street Address" value="{{$userinfo[0]->address}}" class="checkout__input__add">
                            <input type="text" value="{{$userinfo[0]->city}}" placeholder="Apartment, suite, unite ect (optinal)">
                        </div>
                        <div class="checkout__input">
                            <p>Town/City<span>*</span></p>
                            <input type="text" value="{{$userinfo[0]->distric}}">
                        </div>
                        <div class="checkout__input">
                            <p>Country/State<span>*</span></p>
                            <input type="text" value="{{$userinfo[0]->country}}">
                        </div>
                        <!-- <div class="checkout__input">
                            <p>Postcode / ZIP<span>*</span></p>
                            <input type="text" value="{{$userinfo[0]->username}}">
                        </div> -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Phone<span>*</span></p>
                                    <input type="text" value="{{$userinfo[0]->phone}}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Shipping Address<span>*</span></p>
                                    <input type="text" value="{{$userinfo[0]->shipping_address}}">
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>Order notes<span>*</span></p>
                            <input type="text" value="" placeholder="Notes about your order, e.g. special notes for delivery.">
                        </div>

                    </div>





                    <div class="col-lg-6 col-md-6">
                        <div class="checkout__order">
                            <h4>Your Order</h4>
                            <div class="checkout__order__products">Products <span>Total</span></div>
                            <?php
                            $total = 0;
                            $subtotal = 0;
                            ?>
                            @foreach($cart_details as $cart_data)
                            <ul>
                                <li>{{$cart_data->productName}}({{$cart_data->quantity}}) <span>${{$cart_data->price}}</span></li>
                                <?php
                                $subtotal =  $total + $cart_data->price;
                                ?>

                            </ul>
                            @endforeach


                            <div class="checkout__order__subtotal">Subtotal <span>${{$sub_total}}</span></div>
                            <?php
                            $total = (($subtotal * 10) / 100) + $subtotal;

                            ?>
                            <div class="checkout__order__total">Total(10%) <span>${{$total_price}}</span></div>


                            <div id="payment-option" class="checkout__input__checkbox d-none">

                                <div class="container" style="margin-top:10%;margin-bottom:10%">
                                    <div class="row justify-content-center">
                                        <div class="col-md-12">
                                            <div class="">
                                                <p>You will be charged <span style="font-weight: bold; font-size:20px;" >${{$total_price}}</span>  </p>
                                            </div>
                                            @php
                                            $stripe_key = 'pk_test_hzAOqcMkqrUNkVutbLJYHrUT00nhXvanXe';
                                            @endphp

                                            <div class="card">
                                                <form action="{{route('checkout.credit-card')}}" method="post" id="payment-form">
                                                    @csrf
                                                    <div class="form-group">
                                                        <div class="card-header">
                                                            <label for="card-element">
                                                                Enter your credit card information
                                                            </label>
                                                        </div>

                                                        <div class="card-body">
                                                            <div style="margin-bottom: 20px;">
                                                                <input id="cardname" name="cardname" style="width: 100%;" type="text" placeholder="Enter your Card Name" required>
                                                            </div>
                                                            <div id="card-element">
                                                                <!-- A Stripe Element will be inserted here. -->
                                                            </div>
                                                            <!-- Used to display form errors. -->
                                                            <div id="card-errors" role="alert"></div>
                                                            <input type="hidden" name="plan" value="" />
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <!-- <button type="submit" class="site-btn">PLACE ORDER</button> -->
                                                        <button id="card-button" class="site-btn" type="submit" data-secret="{{ $intent }}"> PLACE ORDER </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="checkpayment" class="checkout__input__checkbox">
                                <label for="payment">
                                    <p id="payment">Checkout</p>
                                </label>
                            </div>

                           
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </section>

</div>
<!-- Checkout Section End -->




@endsection


@section('script')



<script src="https://js.stripe.com/v3/"></script>
<script>
    // Custom styling can be passed to options when creating an Element.
    // (Note that this demo uses a wider set of styles than the guide below.)

    var style = {
        base: {
            color: '#32325d',
            lineHeight: '18px',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '16px',
            '::placeholder': {
                color: '#aab7c4'
            }
        },
        invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
        }
    };

    const stripe = Stripe('{{ $stripe_key }}', {
        locale: 'en'
    }); // Create a Stripe client.

    const elements = stripe.elements(); // Create an instance of Elements.
    const cardElement = elements.create('card', {
        style: style
    }); // Create an instance of the card Element.



   


    const cardButton = document.getElementById('card-button');
    const clientSecret = cardButton.dataset.secret;
    cardElement.mount('#card-element'); // Add an instance of the card Element into the `card-element` <div>.

    // Handle real-time validation errors from the card Element.
    cardElement.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
        } else {
            displayError.textContent = '';
        }
    });

    // Handle form submission.
    // var form = document.getElementsByClassName('paymentconfirm');

    var form = document.getElementById('payment-form');



    console.log(form);
    form.addEventListener('submit', function(event) {
        event.preventDefault();


        var cardname = $("#cardname").val();
    
        stripe.handleCardPayment(clientSecret, cardElement, {
                payment_method_data: {
                    // billing_details: { name: cardname }
                }
             
            })
            .then(function(result) {
                console.log(result);
                if (result.error) {
                    // Inform the user if there was an error.
                    var errorElement = document.getElementById('card-errors');
                    errorElement.textContent = result.error.message;
                } else {
                    console.log(result);
                    form.submit();
                }
            });



    });
</script>
@endsection