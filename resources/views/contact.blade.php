@extends('layouts.app')

@section('title', 'Contact Us') 
<!-- Now the title is 'About Us' -->

@section('content')
<div class="site wrapper-content">
    <div class="top_site_main" style="background-image:url(images/banner/top-heading.jpg);">
        <div class="banner-wrapper container article_heading">
            <div class="breadcrumbs-wrapper">
                <ul class="phys-breadcrumb">
                    <li><a href="index.php" class="home">Home</a></li>
                    <li>Contact</li>
                </ul>
            </div>
            <h1 class="heading_primary">Contact</h1></div>
    </div>
    <section class="content-area">
        <div class="container">
            <div class="row">
                <div class="site-main col-sm-9 alignleft">
                    
                    <div class="pages_content padding-top-4x">
                                                <h4>CONTACT INFORMATION</h4>
                        <div class="contact_infor">
                            <ul>
                                <li><label><i class="fa fa-map-marker"></i>ADDRESS</label>
                                    <div class="des"> 4 Chirokchi str., Samarkand, Uzbekistan</div>
                                </li>
                                <li><label><i class="fa fa-phone"></i>TEL NO</label>
                                    <div class="des">+998 91 555 0808</div>
                                </li>
                                <li><label><i class="fa fa-print"></i>FAX NO</label>
                                    <div class="des">+998 66 235 7899</div>
                                </li>
                                <li><label><i class="fa fa-envelope"></i>EMAIL</label>
                                    <div class="des">jahongir-travel@gmail.com</div>
                                </li>
                                <li>
                                    <label><i class="fa fa-clock-o"></i>WORKING HOURS</label>
                                    <div class="des">Mon – Fri 9:00 am – 5:30 pm, Sat 9:00 am – 1:00 pm
                                        
                                    </div>
                                </li>
                                <li>
                                    <label><i class="fa fa-map-marker"></i>GPS COORDINATE</label>
                                    <div class="des">GPS coordinates 39.650176, 66.978082</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="wpb_wrapper pages_content">
                        <h4>Have a question?</h4>
                        <div role="form" class="wpcf7">
                            <div class="screen-reader-response"></div>
                            <livewire:contact-form />

                            <div class="status"> 
                        
                            </div>
                        </div>
                </div>
                <div class="widget-area col-sm-3 align-left">
                    
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
