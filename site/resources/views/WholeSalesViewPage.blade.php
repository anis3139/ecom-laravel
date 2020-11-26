@extends('layout.app')
@section('title','Wholesales')
@section('content')
    <!-- Hero Section Begin -->
    @include('shop-component.Hero')

    <!-- Breadcrumb Section Begin -->

    <!-- Breadcrumb Section End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 row p-5 wsdiv">
                     <div class="col-lg-6 col-md-6  col-sm-12 text-center">
                        <div class="contact__widget m-0px p-0px">
                            <span class="icon_phone"></span>
                            <h4>Phone</h4>
                            <a href="tel:<?php if ($othersData) {echo $othersData->phone;}?>">
                                 <p><?php if ($othersData) {echo $othersData->phone;}?></p>
                            </a> 
                        </div>
                    </div>
                  
                    <div class="col-lg-6 col-md-6   col-sm-12 text-center">
                        <div class="contact__widget m-0px p-0px">
                            <span class="icon_mail_alt"></span>
                            <h4>Email</h4>
                            <a href="mailto:<?php if ($othersData) {echo $othersData->email;}?>">
                                <p><?php if ($othersData) {echo $othersData->email;}?></p>
                              </a> 
                        </div>
                    </div>
                      <div class="col-lg-12 col-md-12  col-sm-12 text-center" >
                        <div class="contact__widget"">
                            <span class="icon_pin_alt"></span>
                            <h4>Address</h4>
                            <p>
                                <?php if ($othersData): ?>
                                
                                {!! nl2br(e($othersData->address)) !!}
                                
                                <?php endif; ?>
                                
                            </p>
                        </div>
                    </div>
                    
                    
                 </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 text-center row p-5">
                    
                        <!-- Contact Form Begin -->
                        <div class="contact-form spad" style="padding-top:0px;">
                           
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="contact__form__title">
                                            <h2>Contact For Whole Sales</h2>
                                        </div>
                                    </div>
                                </div>
                                <form action="#">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <input id="name" type="text" placeholder="Your name">
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <input id="PhonNumber" type="text" placeholder="Your Phone">
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <input id="email" type="text" placeholder="Your Email">
                                        </div>
                                        <div class="col-lg-12 text-center">
                                            <textarea id="massage" placeholder="Your message"></textarea>
                                            <button id="submitWholessalesBtn" type="submit" class="site-btn">SEND MESSAGE</button>
                                        </div>
                                    </div>
                                </form>
                           
                        </div>
                        <!-- Contact Form End -->
                    </div>
               
            </div>
        </div>
    </section>
    <!-- Contact Section End -->


@endsection

@section('script')

<script>


$('#submitWholessalesBtn').click(function(event) {
        event.preventDefault();
        var name = $('#name').val();
        var email = $('#email').val();
        var PhonNumber = $('#PhonNumber').val();
        var massage = $('#massage').val();

        sendContact(name, email, PhonNumber, massage);


    });

    function sendContact(name, email, PhonNumber, massage) {
        if(name.length==0){
            $('#submitWholessalesBtn').html('Please Enter Your Name');
            setTimeout(function () {
                $('#submitWholessalesBtn').html('SEND MESSAGE');
            },2000)
        }
        else if(email.length==0){
            $('#submitWholessalesBtn').html('Please Enter Your Email')
            setTimeout(function () {
                $('#submitWholessalesBtn').html('SEND MESSAGE');
            },2000)
        }
        else if(PhonNumber.length==0){
            $('#submitWholessalesBtn').html('Please Enter Your Mobile Number !')
            setTimeout(function () {
                $('#submitWholessalesBtn').html('SEND MESSAGE');
            },2000)
        }
        else if(massage==null){

            $('#submitWholessalesBtn').html('Please Enter Your massage')
            setTimeout(function () {
                $('#submitWholessalesBtn').html('SEND MESSAGE');
            },2000)

        }
        else {
            $('#submitWholessalesBtn').html('Sending....')
            axios.post('/contactSend',{
                name: name,
                email: email,
                PhonNumber: PhonNumber,
                massage: massage,
            })
                .then(function (response) {
                    console.log(response.data);
                    $('#name').val('');
                    $('#email').val('');
                    $('#PhonNumber').val('');
                    $('#massage').val('');

                    if(response.status==200){
                        console.log(response.data);
                        if(response.data==1){
                            $('#submitWholessalesBtn').html('Sending Successful....')
                            setTimeout(function () {
                                $('#submitWholessalesBtn').html('SEND MESSAGE');
                            },3000)

                        }
                        else{
                            $('#submitWholessalesBtn').html('Sending Failed.... ')
                            setTimeout(function () {
                                $('#submitWholessalesBtn').html('SEND MESSAGE');
                            },3000)
                        }
                    }
                    else {
                        $('#submitWholessalesBtn').html('Sending Failed. Try Again......')
                        setTimeout(function () {
                            $('#submitWholessalesBtn').html('SEND MESSAGE');
                        },3000)
                    }

                }).catch(function (error) {
                $('#submitWholessalesBtn').html('Sending Failed. Try Again......')
                setTimeout(function () {
                    $('#submitWholessalesBtn').html('SEND MESSAGE');
                },3000)
            })
        }


    }




</script>

@endsection