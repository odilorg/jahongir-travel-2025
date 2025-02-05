@extends('layouts.app')

@section('title', 'About Us') 
<!-- Now the title is 'About Us' -->

@section('content')
<div class="site wrapper-content">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="images/gur-emir.jpg" alt="Mausoleum Gur Emir Samarkand">
            </div>

            <div class="item">
                <img src="images/abdulazizhon-medrasah.jpg" alt="abdulazizhon medrasah Bukhara">
            </div>

            <div class="item">
                <img src="images/nuratau-trekking.jpg" alt="Nuratau-mountains">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="wrapper-container">
        <div class="top_site_main" style="background-image:url(images/banner/top-heading.jpg);">
            <div class="banner-wrapper container article_heading">
                <div class="breadcrumbs-wrapper">
                    <ul class="phys-breadcrumb">
                        <li><a href="index.php" class="home">Tours</a></li>
                        <li>Uzbekistan Tours</li>
                    </ul>
                </div>
                <h1 class="heading_primary">Tours in Uzbekistan from Samarkand, Bukhara, Khiva</h1>
            </div>
        </div>
        <section class="content-area">
            <div class="container">
                <div class="row">
                    <div class="site-main col-sm-12">
                        <ul class="tours products wrapper-tours-slider">
                            @foreach ($allTours as $tour)
                            <li class="item-tour col-md-4 col-sm-6 product">
                                <div class="item_border item-product">
                                    <div class="post_images">
                                        <a href="{{ route('tours.show', ['city_slug' => $tour->city_slug, 'slug' => $tour->slug]) }}">
                                            <span class="price">From $950.00</span>
                                            <img width="430" height="305"
                                                src="{{ Storage::url($tour->tour_photos[0]['photo']) }}"
                                                alt="uzbekistan-tour-best-of-uzbekistan-in-10-days"
                                                title="{{ $tour->name }}">
                                        </a>

                                    </div>
                                    <div class="wrapper_content">
                                        <div class="post_title">
                                            <h4>
                                                <a href="uzbekistan-tours/best-of-uzbekistan-in-10-days.php"
                                                    rel="bookmark">{{ $tour->name }}</a>
                                            </h4>
                                        </div>
                                        <span class="post_date">10 days</span>
                                        <div class="description">
                                            <p>{{ \Illuminate\Support\Str::limit($tour->description, 250, '...') }}</p>
                                        </div>
                                    </div>
                                    <div class="read_more">
                                        <div class="item_rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <a rel="nofollow"
                                            href="uzbekistan-tours/best-of-uzbekistan-in-10-days.php"
                                            class="button product_type_tour_phys add_to_cart_button">Read
                                            more</a>
                                    </div>
                                </div>
                            </li> 
                            @endforeach
                           
                            
                        </ul>

                    </div>
                </div>
            </div>
        </section>
    </div>
   
</div>
@endsection
