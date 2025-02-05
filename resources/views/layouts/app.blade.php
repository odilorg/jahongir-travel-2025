<!DOCTYPE html>
<html lang="en-US">

<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-11149707-6"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-11149707-6');
    </script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>@yield('title', 'Default Title')</title>
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="xmlrpc.html">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/flaticon.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/font-linearicons.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/booking.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/swipebox.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="../assets/css/travel-setting.css" type="text/css" media="all">
    <link rel="shortcut icon" href="../images/favicon.png" type="image/x-icon">

    <link rel="stylesheet" href="../thumbnail-gallery.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

    <!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

    <!-- Bootstrap Date-Picker Plugin -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
    <link rel="stylesheet" href="../assets/css/thumbnail-gallery.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">

</head>

<body class="single-product travel_tour-page travel_tour">


    <!-- Chat implementation -->

    <style>
        /* WhatsApp button styling */
        .whatsapp-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #25d366;
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: all 0.3s ease;
            z-index: 9999;
            /* Ensures the button stays above other elements */
        }

        .whatsapp-button:hover {
            background-color: #1ebc53;
        }

        .whatsapp-button img {
            width: 35px;
            height: 35px;
        }
    </style>

    <a href="https://wa.me/998940771303" target="_blank" class="whatsapp-button">
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" alt="WhatsApp">
    </a>



    <div class="wrapper-container">

       <!-- Header -->
    @include('partials.header')

     <!-- Main Content -->
     
        @yield('content')
    </div>

     <!-- Footer -->
     @include('partials.footer')
       
        

    </div>

    <script type='text/javascript' src='../assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='../assets/js/bootstrap.min.js'></script>
    <script type='text/javascript' src='../assets/js/vendors.js'></script>
    <script type='text/javascript' src='../assets/js/owl.carousel.min.js'></script>
    <script type="text/javascript" src="../assets/js/jquery.mb-comingsoon.min.js"></script>
    <script type="text/javascript" src="../assets/js/waypoints.min.js"></script>
    <script type="text/javascript" src="../assets/js/jquery.counterup.min.js"></script>
    <script type='text/javascript' src='../assets/js/theme.js'></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
    <script>
        baguetteBox.run('.tz-gallery');
    </script>
    <script>
        $(document).ready(function () {
            var date_input = $('input[name="departure_date"]'); //our date input has the name "date"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            var options = {
                format: 'dd/mm/yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        })
    </script>
    <script type="text/javascript">
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>


</body>


</html>