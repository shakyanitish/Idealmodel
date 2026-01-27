<?php

/*
* Testimonial List Home page
*/
$restst = '';
$tstRec = Testimonial::get_alltestimonial(9);
if (!empty($tstRec)) {
    $restst .= '';
    foreach ($tstRec as $tstRow) {
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'javascript:void(0);';
        $target = !empty($tstRow->linksrc) ? 'target="_blank"' : '';
        $rating = '';
        for ($i = 0; $i < $tstRow->type; $i++) {
            $rating .= '<a href="#"><i class="fa-solid fa-star"></i></a>';
        }
        $restst .= '';
        $restst .= '
        <!-- owl item -->
                            <div class="mad-grid-item">
                                <div class="mad-testimonial">
                                    <div class="mad-testimonial-info">
                                        <blockquote>
                                            <p>
                                                ' . strip_tags($tstRow->content) . '
                                            </p>
                                        </blockquote>
                                    </div>

                                    <div class="mad-author">
                                        <div class="mad-author-info">
                                            <span class="mad-author-name">' . $tstRow->name . ' - ' . $tstRow->via_type . '</span>
                                              <a href="#"><img src="template/web/images/visor2.png" alt="" /></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
        <!-- / owl item -->
                    ';

        $restst .= '';
    }
    $restst .= '';
}

$result_last = '
<div class="mad-section mad-section--stretched mad-colorizer--scheme-color-3 with-svg-img mad-colorizer--scheme-light  content-element-main" data-bg-image-src="footer_4_bg_img.svg">
                    <!--================ Testimonials ================-->
                    <div class="mad-testimonials style-2">
                        <div class="mad-grid mad-grid--cols-1 owl-carousel no-dots nav-size-2">
                    ' . $restst . '
                    </div>
                    </div>
                    <!--================ End of Testimonials ================-->
                </div>';


$jVars['module:testimonialList123'] = $result_last;



/*
* Testimonial Header Title
*/
$tstHtitle = '';

if (defined('HOME_PAGE')) {
    $tstHtitle .= '<section class="promo_full">
    <div class="promo_full_wp">
        <div>
            <h3>What Guest say</h3>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="carousel_testimonials">';
    $tstRec = Testimonial::get_alltestimonial();
    if (!empty($tstRec)) {
        foreach ($tstRec as $tstRow) {
            $tstHtitle .= '<div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt="' . $tstRow->name . '" class="img-circle"></figure>
                                        <h4>' . $tstRow->name . '</h4>
                                    </div>
                                    <div class="comment">
                                       ' . strip_tags($tstRow->content) . '
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>';
        }
        $tstHtitle .= '</div><!-- End carousel_testimonials -->
                    </div><!-- End col-md-8 -->
                </div><!-- End row -->
            </div><!-- End container -->
        </div><!-- End promo_full_wp -->
    </div><!-- End promo_full -->
    </section><!-- End section -->';
    }
}
$jVars['module:testimonial-title'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead = '';

$tstRand = Testimonial::get_by_rand();
if (!empty($tstRand)) {
    $tstHead .= '<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="' . IMAGE_PATH . 'testimonial/' . $tstRand->image . '" alt="' . $tstRand->name . '"></div>
	            <h5><em>' . strip_tags($tstRand->content) . '</em></h5>
	            <p><span><strong>' . $tstRand->name . ', ' . $tstRand->country . '</strong> (Via : ' . $tstRand->via_type . ')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


/*
* Testimonial List
*/
$restst = '';
$tstRec = Testimonial::get_alltestimonial(9);

if (!empty($tstRec)) {
    $restst .= '<div class="testimonial-slider owl-carousel owl-theme">';

    foreach ($tstRec as $tstRow) {
        // Rating stars
        $rating = '';
        for ($i = 0; $i < $tstRow->rating; $i++) {
            $rating .= '<i class="fas fa-star"></i>';
        }
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'javascript:void(0);';
        $target = !empty($tstRow->linksrc) ? 'target="_blank"' : '';

        $restst .= '
                    <div class="testimonial-single">
                        <div class="testimonial-quote">
                            <span class="testimonial-quote-icon"><i class="fal fa-quote-right"></i></span>
                            <p>' . strip_tags($tstRow->content) . '</p>
                            <div class="testimonial-rate">
                                ' . $rating . '
                            </div>
                        </div>
                        <div class="testimonial-content">
                            <div class="testimonial-author-img">
                                <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt="">
                            </div>
                            <div class="testimonial-author-info">
                                <h4> ' . $tstRow->name . '</h4>
<p><a href="' . $slink . '" ' . $target . '>' . $tstRow->via_type . '</a></p>                            
</div>
                        </div>
                    </div>
                    ';
    }

    $restst .= '</div>';
}
$jVars['module:testimonialList'] = $restst;
