<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{asset('client')}}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/mdb.min.css" type="text/css">
    <link rel="stylesheet" href="{{asset('client')}}/css/style.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.css" />


    <!-- Registration Form Style Css -->
    <link rel="stylesheet" type="text/css" href="{{asset('client')}}/css/montserrat-font.css">
    <link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="{{asset('client')}}/css/registration-style.css" />
    <!-- Registration Form Style Css -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   
    @yield('extra-css')


</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Start -->
    @include('layout.menu')
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    @include('layout.header')
    <!-- Header Section End -->




    @yield('content')







    <!-- Footer Section Begin -->
    @include('layout.footer')
    <!-- Footer Section End -->

    <!-- @yield('script') -->
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



    <!-- Js Plugins -->
    <script src="{{asset('client')}}/js/jquery-3.3.1.min.js"></script>
    <script src="{{asset('client')}}/js/bootstrap.min.js"></script>
    <script src="{{asset('client')}}/js/jquery.nice-select.min.js"></script>
    <script src="{{asset('client')}}/js/jquery-ui.min.js"></script>
    <script src="{{asset('client')}}/js/jquery.slicknav.js"></script>
    <script src="{{asset('client')}}/js/mixitup.min.js"></script>
    <script src="{{asset('client')}}/js/owl.carousel.min.js"></script>
    <script src="{{asset('client')}}/js/axios.min.js"></script>
    <script src="{{asset('client')}}/js/mdb.min.js"></script>
    <script src="{{asset('client')}}/js/main.js"></script>
    <script src="{{asset('client')}}/js/custom.js"></script>
    @yield('script')
    <!-- extra js -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
    <script src="https://js.braintreegateway.com/web/dropin/1.13.0/js/dropin.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.js"></script>

  

</body>

</html>