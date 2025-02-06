@extends('layouts.app')

@section('title', $tour->name) <!-- Now the title is 'About Us' -->

@section('content')
<div class="site wrapper-content">
	<div class="top_site_main" style="background-image:url(../images/banner/top-heading.jpg);">
		<div class="banner-wrapper container article_heading">
			<div class="breadcrumbs-wrapper">
				<ul class="phys-breadcrumb">
					<li><a href="index.php" class="home">Tours</a></li>
					<li>Daytrip to Shahrisabz</li>
				</ul>
			</div>


			<h2 class="heading_primary">{{ $tour->name }}</h2>
		</div>
	</div>
	<section class="content-area single-woo-tour">
		<div class="container">
			<div class="tb_single_tour product">
				<div class="top_content_single row">
					<div class="images images_single_left">
						<div class="title-single">
							<div class="title">
								<h1>{{ $tour->name }}</h1>
							</div>
							<div class="tour_code">
								<strong>Code: </strong>SHAH
							</div>
						</div>
						<div class="tour_after_title">
							<div class="meta_date">
								<span>{{ $tour->tour_duration }}</span>
							</div>
							<div class="meta_values">
								<span>Category:</span>
								<div class="value">
									@foreach ($tour->categories as $tourCategory)
										<a href="#" rel="tag">{{ $tourCategory->name }}</a>,
									@endforeach
								</div>
							</div>
							<div class="tour-share">
								<ul class="share-social">
									<li>
										<a target="_blank" class="facebook" href="#"><i
												class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a target="_blank" class="twitter" href="#"><i
												class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a target="_blank" class="pinterest" href="#"><i
												class="fa fa-pinterest"></i></a>
									</li>
									<li>
										<a target="_blank" class="googleplus" href="#"><i
												class="fa fa-google"></i></a>
									</li>
								</ul>
							</div>
						</div>

						<div class="clear"></div>
						<div class="single-tour-tabs wc-tabs-wrapper">
							<ul class="tabs wc-tabs" role="tablist">
								<li class="description_tab active" role="presentation">
									<a href="#tab-description" role="tab" data-toggle="tab">Description</a>
								</li>
								<li class="itinerary_tab_tab" role="presentation">
									<a href="#tab-itinerary_tab" role="tab" data-toggle="tab">Itinerary</a>
								</li>
								<li class="location_tab_tab" role="presentation">
									<a href="#tab-location_tab" role="tab" data-toggle="tab">Location</a>
								</li>
								<li class="gallery_tab_tab" role="presentation">
									<a href="#tab-gallery_tab" role="tab" data-toggle="tab">Gallery</a>
								</li>

							</ul>
							<div class="tab-content">
								<div role="tabpanel"
									class="tab-pane single-tour-tabs-panel single-tour-tabs-panel--description panel entry-content wc-tab active"
									id="tab-description">
									<h2>Description </h2>
									<p>{{ $tour->description }}</p>
									<div class="panel-group" id="travel-tips" role="tablist"
										aria-multiselectable="true">
										<div class="panel">
											<div class="panel-heading" role="tab" id="heading_1485138121986">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#travel-tips"
														href="#collapse_1485138121986" aria-expanded="false"
														aria-controls="collapse_1485138121986">
														Jahongir Travel offers the following services
													</a>
												</h4>
											</div>
											<div id="collapse_1485138121986" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="heading_1485138121986">
												<div class="content-inner">
													<div class="row">
														<div class="col-sm-2">

														</div>
														<div class="col-sm-10">

															<ul class="sub-menu">
																<li> Individual and group tours to Uzbekistan
																	and Central Asia </li>
																<li>Booking of domestic air and train tickets
																</li>
																<li>Uzbekistan Hotel bookings</li>
																<li>Transfers from and to the airports, trains
																	stations</li>
																<li>Transfers between Uzbekistan cities</li>
																<li>Organizing the exhibitions, conferences,
																	banquets, folklore shows, concerts, tea
																	parties</li>
																<li>Organizing Lunches and dinners at Uzbek
																	national houses and restaurants</li>

															</ul>
															<p>Wherever we take you throughout Uzbekistan, it
																promises to be an unforgettable journey filled
																with exclusive personal experiences beyond
																anything you could do on your own.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="panel">
											<div class="panel-heading" role="tab" id="heading_1485138121987">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#travel-tips"
														href="#collapse_1485138121987" aria-expanded="false"
														aria-controls="collapse_1485138121986">
														Jahongir Travel offers the following services
													</a>
												</h4>
											</div>
											<div id="collapse_1485138121987" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="heading_1485138121987">
												<div class="content-inner">
													<div class="row">
														<div class="col-sm-2">

														</div>
														<div class="col-sm-10">

															<ul class="sub-menu">
																<li> Individual and group tours to Uzbekistan
																	and Central Asia </li>
																<li>Booking of domestic air and train tickets
																</li>
																<li>Uzbekistan Hotel bookings</li>
																<li>Transfers from and to the airports, trains
																	stations</li>
																<li>Transfers between Uzbekistan cities</li>
																<li>Organizing the exhibitions, conferences,
																	banquets, folklore shows, concerts, tea
																	parties</li>
																<li>Organizing Lunches and dinners at Uzbek
																	national houses and restaurants</li>

															</ul>
															<p>Wherever we take you throughout Uzbekistan, it
																promises to be an unforgettable journey filled
																with exclusive personal experiences beyond
																anything you could do on your own.</p>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>
									<table class="tours-tabs_table">
										<tbody>
											<tr>
												<td><strong>DEPARTURE/RETURN LOCATION</strong></td>
												<td>{{ $tour->departure_return_location }}</td>
											</tr>
											<tr>
												<td><strong>DEPARTURE TIME</strong></td>
												<td>{{ $tour->departure_time }}</td>
											</tr>
											<tr>
												<td><strong>INCLUDED</strong></td>
												<td>
													<table>
														<tbody>
															@if (!empty($tour->tour_excludes))
																<ul>
																	@foreach ($tour->tour_excludes as $exclude)
																				<tr>
																			<td><i
																					class="fa fa-check icon-tick icon-tick--on"></i>{{ $exclude['name'] }}
																			</td>

																		</tr>
																	@endforeach
																</ul>
															@else
																<p>No exclusions available.</p>
															@endif



														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td><b>NOT INCLUDED</b></td>
												<td>
													<table>
														<tbody>
															@if (!empty($tour->tour_includes))
																<ul>
																	@foreach ($tour->tour_includes as $include)
																					<tr>
																			<td><i
																					class="fa fa-check icon-tick icon-tick--on"></i>{{ $include['name'] }}
																			</td>

																		</tr>
																	@endforeach
																</ul>
															@else
																<p>No exclusions available.</p>
															@endif


														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td><b>Tour details with the prices:</b></td>
												<td>
													<table class="table">
														<thead>
															<tr>
																<th scope="col">num of people</th>
																<th scope="col">Price per person</th>

															</tr>
														</thead>
														<tbody>
															@if (!empty($tour->tour_prices))
																<ul>
																	@foreach ($tour->tour_prices as $price)
																					<tr>
																			<th scope="row">
																				{{ $price['number_people'] }}
																			</th>
																			<td>{{ $price['price'] }}$</td>

																		</tr>
																	@endforeach
																</ul>
															@else
																<p>No exclusions available.</p>
															@endif


														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td><b>Tour details:</b></td>
												<td>
													<table>
														<tbody>

															<tr>
																<td>
																	Please note that above trip suggestion can
																	be tailored to your individual needs.
																</td>
															</tr>
															<tr>
																<td>
																	<a
																		href="{{ Storage::url($tour->tour_file) }}"><img
																			src="{{ asset('images/pdf-download.png') }}"
																			alt="pdf-file-download">{{ $tour->name }}</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>



										</tbody>
									</table>

								</div>
								<div role="tabpanel"
									class="tab-pane single-tour-tabs-panel single-tour-tabs-panel--itinerary_tab panel entry-content wc-tab"
									id="tab-itinerary_tab">
									@if ($hasMultipleDays)
										@foreach ($tour->tourDays as $day)
															<div class="interary-item">
												<p><span class="icon-left"></span></p>
												<div class="item_content">
													<h2><strong>{{ $day->name }}</strong></h2>
													<p>{{ $day->description }}</p>

												</div>
											</div>
										@endforeach
									@else
										@foreach ($tour->tourDays as $tourDay)                         

															<ul>
												@foreach ($tourDay->itineraries as $itin_day)
																				<div class="interary-item">
														<p><span class="icon-left">{{ $itin_day['time'] }}</span></p>
														<div class="item_content">
															<h2><strong>{{ $itin_day['title'] }}</strong></h2>
															<p>{{ $itin_day['description'] }}</p>

														</div>
													</div>
												@endforeach
											</ul>


										@endforeach
									@endif













								</div>
								<div role="tabpanel"
									class="tab-pane single-tour-tabs-panel single-tour-tabs-panel--location_tab panel entry-content wc-tab"
									id="tab-location_tab">

									<div>
										<iframe src="{{ $tour->location }}" width="800" height="450"
											frameborder="0" style="border:0" allowfullscreen></iframe>

									</div>


								</div>
								<div role="tabpanel"
									class="tab-pane single-tour-tabs-panel single-tour-tabs-panel--gallery_tab panel entry-content wc-tab"
									id="tab-gallery_tab">

									<div>
										<div class="tz-gallery">
											<h3 class="caption2">{{ $tour->name }} Gallery</h3>
											<div class="row">
												@foreach ($tour->tour_photos as $photo)
														<div class="col-sm-6 col-md-4">
														<div class="thumbnail">
															<a class="lightbox"
																href="{{ Storage::url($photo["photo"]) }}">
																<img src="{{ Storage::url($photo["photo"]) }}"
																	alt="on-way-shahrisabz-pass">
															</a>
															<div class="caption">
																<h3>{{ $photo["photo_description"] }} </h3>

															</div>
														</div>
													</div>
												@endforeach



											</div>

										</div>


									</div>

								</div>
							</div>


						</div>



						<div class="related tours">
							<h2>Related Tours</h2>
							<ul class="tours products wrapper-tours-slider">
								@foreach ($relatedTours as $relatedTour)
										<li class="item-tour col-md-4 col-sm-6 product">
										<div class="item_border item-product">
											<div class="post_images">
												<a href="{{ route('tours.show', ['city_slug' => $relatedTour->city_slug, 'slug' => $relatedTour->slug]) }}">

													<img width="430" height="305"
														src="{{ Storage::url($relatedTour->tour_photos[0]['photo']) }}"
														alt="gilded-dome-tilla-kori"
														title="{{ $relatedTour->tour_photos[0]['photo_description'] }}">
												</a>

											</div>
											<div class="wrapper_content">
												<div class="post_title">
													<h4>
														<a href="{{ route('tours.show', ['city_slug' => $relatedTour->city_slug, 'slug' => $relatedTour->slug]) }}"
															rel="bookmark">
															{{ $relatedTour->name }}
														</a>

													</h4>
												</div>
												<span class="post_date">daytour</span>
												<div class="description">
													<p>{{ \Illuminate\Support\Str::limit($relatedTour->description, 100, '...') }} </p>
												</div>
											</div>
											<div class="read_more">

												<a rel="nofollow" href="{{ route('tours.show', ['city_slug' => $relatedTour->city_slug, 'slug' => $relatedTour->slug]) }}"
													class="button product_type_tour_phys add_to_cart_button">Read
													more</a>
											</div>
										</div>
									</li>
								@endforeach


							</ul>
						</div>
					</div>

					<div class="summary entry-summary description_single">
						<div class="affix-sidebar">
							<div class="entry-content-tour">
								<p class="price">
									<span class="text"> via WhatsApp <a href="https://wa.me/998940771303">+998
											94 077 13 03</a> </span><span
										class="travel_tour-Price-amount amount">for booking or use form
										below</span>
								</p>

								<div class="clear"></div>
								<div class="booking">
									<div class="">
										<div class="form-block__title">
											<h4>Book the tour </h4>

										</div>

										<livewire:email-tour-booking-form :slug="$tour->slug" />


									</div>
								</div>

							</div>
							<div id="TA_cdswritereviewlgvi434" class="TA_cdswritereviewlgvi">
								<ul id="vB0HAL3Ao" class="TA_links bAsARFAFS">
									<li id="1u9mfj8133G" class="r6htFhZAf">
										<a target="_blank" href="https://www.tripadvisor.com/"><img
												src="https://static.tacdn.com/img2/brand_refresh/Tripadvisor_lockup_horizontal_secondary_registered.svg"
												alt="TripAdvisor" /></a>
									</li>
								</ul>
							</div>
							<script async
								src="https://www.jscache.com/wejs?wtype=cdswritereviewlgvi&amp;uniq=434&amp;locationId=17475559&amp;lang=en_US&amp;lang=en_US&amp;display_version=2"
								data-loadtrk onload="this.loadtrk=true"></script>

							<div class="widget-area align-left col-sm-3">
								<aside class="widget widget_travel_tour">
									<div class="wrapper-special-tours">
										<div class="inner-special-tours">
											<a href="daytrip-urgut-bazar-konigul-village.php">
												<img width="430" height="305"
													src="images/urgut/urgut-market-fabrics.jpg" alt=""
													title="fabrics-urgut-market"></a>

											<div class="post_title">
												<h3>
													<a href="daytrip-urgut-bazar-konigul-village.php"
														rel="bookmark">Visit Urgut market</a>
												</h3>
											</div>
											<div class="item_price">

											</div>
										</div>
										<div class="inner-special-tours">
											<a href="hiking-amankutan.php">

												<img width="430" height="305"
													src="images/aman-kutan/aman-kutan-mountain-hiking.jpg"
													alt="mountain-pass-tahtakaracha-shahrisabz"
													title="shahrisabz-day-tour"></a>

											<div class="post_title">
												<h3>
													<a href="hiking-amankutan.php" rel="bookmark">Hiking in Aman
														Kutan</a>
												</h3>
											</div>
											<div class="item_price">

											</div>
										</div>
										<div class="inner-special-tours">
											<a href="nuratau-homestay-2-days.php">
												<img width="430" height="305"
													src="images/nuratau/homestay-in-nuratau-mountains.jpg"
													alt="family-asraf-village" title="homestay-nuratau-2-days">
											</a>

											<div class="post_title">
												<h3>
													<a href="nuratau-homestay-2-days.php" rel="bookmark">Live
														like a Local in Asraf village</a>
												</h3>
											</div>
											<div class="item_price">

											</div>
										</div>
									</div>
								</aside>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@endsection
