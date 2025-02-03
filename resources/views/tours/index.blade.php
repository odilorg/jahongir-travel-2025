@extends('layouts.app')

@section('title', $tour->name ?? 'Tours from '.   ucfirst($citySlug)  )
<!-- Now the title is 'About Us' -->

@section('content')
<div class="wrapper-container">
	<div class="top_site_main" style="background-image:url(../images/banner/top-heading.jpg);">
		<div class="banner-wrapper container article_heading">
			<div class="breadcrumbs-wrapper">
				<ul class="phys-breadcrumb">
					<li><a href="index.php" class="home">Tours</a></li>
					<li>Uzbekistan Tours</li>
				</ul>
			</div>
			<h1 class="heading_primary">Tours in Uzbekistan from Samarkand, Bukhara, Khiva</h1></div>
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
									<a href="{{ route('tours.show', ['city_slug' => $tour->city_slug, 'slug' => $tour->slug]) }}" rel="bookmark">
									  
										<span class="price">From ${{ $tour->tour_prices[2]['price']  }}.00								
										</span>
										
										<img width="430" height="305" src="{{ Storage::url($tour->tour_photos[0]['photo']) }}" alt="yurt-camp-aydarkul-tour-from-samarkand" title="yurt-camp-aydarkul-tour-from-samarkand">
									</a>
									
								</div>
								<div class="wrapper_content">
									<div class="post_title"><h4>
										<a href="{{ route('tours.show', ['city_slug' => $tour->city_slug, 'slug' => $tour->slug]) }}" rel="bookmark">  {{ $tour->name }}</a>
									</h4></div>
									<span class="post_date">{{ $tour->tour_duration }}</span>
									<div class="description">
										<p>{{ \Illuminate\Support\Str::limit($tour->description, 250, '...') }}
										</p>
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
									<a rel="nofollow" href="{{ route('tours.show', ['city_slug' => $tour->city_slug, 'slug' => $tour->slug]) }}" class="button product_type_tour_phys add_to_cart_button">Read more</a>
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
@endsection
