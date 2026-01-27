<?php
/* First Slideshow */
$reslide = '';
$mini = '';
$miniThumbs = '';
$Records = Slideshow::getSlideshow_by(0);

if ($Records) {
    $i = 0;

    foreach ($Records as $RecRow) {
        $linksrc = (!empty($RecRow->linksrc))
            ? ((strpos($RecRow->linksrc, 'http') === 0) ? $RecRow->linksrc : BASE_URL . $RecRow->linksrc)
            : 'javascript:void(0);';
        
        // ** MODIFICATION: Determine link target based on external URL **
        // Check if the link source starts with "http" (meaning it's an external link)
        $isExternalLink = (strpos($RecRow->linksrc, 'https') === 0);

        // If it's an external link, set target="_blank". Otherwise, leave it empty.
        $linkTarget = $isExternalLink ? ' target="_blank"' : ''; 

        // The original linktype logic can be removed or ignored if you use the above.
        // $linkTarget = ($RecRow->linktype == 1) ? ' target="_blank"' : '';

        // Check if a valid, non-placeholder link was provided
        $hasLink = !empty($RecRow->linksrc); 

        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;

        if (file_exists($file_path) && !empty($RecRow->image)) {
            $i++;

            $reslide .= '



                <!-- slider item -->
                    <div class="swiper-slide">
                        <div class="ul-banner-2-slide">
                            <!-- bg img -->
                            <img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" alt="Slide Background Image"
                                class="ul-banner-2-slide-bg-img">
                            <div class="row gy-4 align-items-center ">
                                <!-- banner text -->
                                <div class="col-md-7">
                                    <div class="ul-banner-txt">
                                        <div class="wow animate__fadeInUp">
                                            <span class="ul-banner-sub-title ul-section-sub-title">' .$RecRow->title.'</span>
                                            <h1 class="ul-banner-title">' .$RecRow->content . '
                                            </h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>';

            // Generate thumbnail for this slide
            $miniThumbs .= '<div class="swiper-slide"><img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" alt="Banner Thumb"></div>';
        }
    }
}

// Integrate slideshow-mini with dynamic thumbnails
$jVars["module:slideshow-mini"] = '


            <div class="ul-banner-2-slider-navigation">
                <button class="prev"><img src="template/web/assets/img/left-arrow.svg" alt="arrow"></button>
                <div class="ul-banner-2-thumb-slider swiper">
                    <div class="swiper-wrapper">
                        ' . $miniThumbs . '
                    </div>
                </div>
                <button class="next"><img src="template/web/assets/img/right-arrow.svg" alt="arrow"></button>
            </div>

';

$jVars["module:slideshow-uc"] = $reslide;
?>