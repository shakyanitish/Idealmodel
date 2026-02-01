<?php
/*
* Programs list - Dynamic carousel on homepage
*/

$programsContent = '';

// Get all active programs (packages with type = 0 for programs)
$programsRec = Package::getHomePackage();

if (!empty($programsRec)) {
    $programsHtml = '';

    foreach ($programsRec as $program) {
        // Get main image
        $imglink = '';
        if (!empty($program->banner_image) && $program->banner_image != "a:0:{}") {
            $imageList = unserialize($program->banner_image);
            if (!empty($imageList[0])) {
                $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
                }
            }
        }

        // Fallback to default image if no banner image
        if (empty($imglink)) {
            $siteRegulars = Config::find_by_id(1);
            $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }

        // Build program link
        $programLink = BASE_URL . 'program/' . $program->slug;

        // Get title
        $title = !empty($program->title) ? $program->title : 'Program';

        // Get description from brief or sub_title
        $description = $program->sub_title ?? '';



        $programsHtml .= '
                        <!-- single slide -->
                        <div class="swiper-slide">
                            <div class="ul-service">
                                <div class="ul-service-img">
                                    <img src="' . $imglink . '" alt="' . $title . '">
                                </div>
                                <div class="ul-service-txt">
                                    <h3 class="ul-service-title"><a href="' . BASE_URL . 'program/' . $program->slug . '">' . $title . '</a></h3>
                                    <p class="ul-service-descr">' . $description . '</p>
                                    <a href="' . BASE_URL . 'program/' . $program->slug . '" class="ul-service-btn"><i class="flaticon-up-right-arrow"></i> View Details</a>
                                </div>
                            </div>
                        </div>';
    }

    $programsContent = '
        <section class="ul-section-spacing overflow-hidden">
            <div class="ul-container">
                <div class="ul-section-heading">
                    <div>
                        <span class="ul-section-sub-title">Together we can change lives forever</span>
                        <h2 class="ul-section-title">Our Programs</h2>
                    </div>

                    <div class="ul-services-slider-nav ul-slider-nav position-static">
                        <button class="prev"><i class="flaticon-back"></i></button>
                        <button class="next"><i class="flaticon-next"></i></button>
                    </div>
                </div>

                <div class="ul-services-slider swiper overflow-visible">
                    <div class="swiper-wrapper">
                        ' . $programsHtml . '
                    </div>
                </div>
            </div>
        </section>';
}

$jVars['module:programlist'] = $programsContent;


$booking_code = Config::getField('hotel_code', true);

$roomlist = $roombread = $singlepage = '';
$modalpopup = '';
$room_package = '';
$single_more = '';

/*
* package listing page - LIST VIEW (no slug)
*/
if (defined('PACKAGE_PAGE') and !isset($_REQUEST['slug'])) {
    $pkgList = Package::find_all();
    if (!empty($pkgList)) {
        $counter = 0;
        $singlepage = '';
        $single_more = '';

        foreach ($pkgList as $pkgRow) {
            $siteRegulars = Config::find_by_id(1);
            if ($pkgRow->type == 0 && $pkgRow->status == 1) {
                $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
                $pkgRowImg = $pkgRow->banner_image;

                if ($pkgRowImg != "a:0:{}") {
                    $pkgRowList = unserialize($pkgRowImg);
                    $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
                    if (file_exists($file_path) and !empty($pkgRowList[0])) {
                        $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
                    }
                }

                $single = '
                    <!-- single slide -->
                    <div class="col">
                        <div class="ul-service">
                            <div class="ul-service-img">
                                <img src="' . $imglink . '" alt="' . $pkgRow->title . '">
                            </div>
                            <div class="ul-service-txt">
                                <h3 class="ul-service-title"><a href="' . BASE_URL . 'program/' . $pkgRow->slug . '">' . $pkgRow->title . '</a></h3>
                                <p class="ul-service-descr">
                                ' . $pkgRow->sub_title . '</p>
                                <a href="' . BASE_URL . 'program/' . $pkgRow->slug . '" class="ul-service-btn"><i class="flaticon-up-right-arrow"></i> View Details</a>
                            </div>
                        </div>
                    </div>';

                if ($counter < 6) {
                    $singlepage .= $single;
                } else {
                    $single_more .= $single;
                }

                $counter++;
            }
        }

        $roombread .= '
        <section class=" ul-section-spacing overflow-hidden">
            <div class="ul-container">
                <div class="row row-cols-md-3 row-cols-2 row-cols-xxs-1 ul-bs-row">
                    ' . $singlepage . '

                </div>
                
                <span id="dots">...</span>
                <span id="more">
                    <div class="row row-cols-md-3 row-cols-2 row-cols-xxs-1 ul-bs-row mt-4">
                    ' . $single_more . '
                    </div>
                </span>

                <!-- pagination -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="btns-block btns-center">
                            <button onclick="myFunction()" id="myBtn1" class="ul-btn d-sm-inline-flex px-4 mt-4">Load More</button>
                        </div>
                    </div> 
                </div>
            </div>
        </section>

';
    }
    $jVars['module:package'] = $roombread;
}


/*
* Program Detail Page
*/
$program_detail = $program_detail_title = '';
if (defined("PACKAGE_DETAIL_PAGE") && isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $Package = Package::find_by_slug($slug);

    if (!empty($Package)) {
        // Breadcrumb title
        $program_detail_title = '
        <section class="ul-breadcrumb ul-section-spacing">
            <div class="ul-container">
                <h2 class="ul-breadcrumb-title">' . $Package->title . '</h2>
            </div>
        </section>
        ';
        $jVars['module:program-detail-title'] = $program_detail_title;



        // Get banner image
        $banner_img = '';
        $galleryImages = SubPackageImage::getImagelist_by($Package->id);
        $sliders = '';

        if (!empty($galleryImages)) {
            foreach ($galleryImages as $galleryImage) {
                $file_path = SITE_ROOT . 'images/package/galleryimages/' . $galleryImage->image;
                if (file_exists($file_path)) {
                    $banner_img = IMAGE_PATH . 'package/galleryimages/' . $galleryImage->image;

                    $sliders .= '
                        <!-- single slide -->
                        <div class="swiper-slide">
                            <div class="ul-event-details-img">
                                <img src="' . $banner_img . '" alt="' . $Package->title . '">
                            </div>
                        </div>';
                }
            }
        }

        $program_detail = '


        <div class="ul-container ul-section-spacing">
            <div class="row gy-4 flex-column-reverse flex-lg-row">
                <!-- event details content -->
                <div class="col-lg-8">
                    <div class="ul-event-details ul-donation-details">
                       <div class="ul-testimonial-2-slider swiper">
                            <div class="swiper-wrapper">
                                ' . $sliders . '
                            </div>
                        </div>
                        
                        <h2 class="ul-event-details-title">' . $Package->title . '</h2>
                        ' . $Package->content . '
                    </div>
                </div>

                <!-- left sidebar -->
                <div class="col-lg-4">
                    <div class="ul-inner-sidebar">
                        <!-- single widget / Recent Posts -->
                        <div class="ul-inner-sidebar-widget posts">
                            <h3 class="ul-inner-sidebar-widget-title">Other Programs</h3>
                            <div class="ul-inner-sidebar-widget-content">
                                <div class="ul-inner-sidebar-posts">';

        // Get other Recent  programs
        $otherPrograms = Package::get_latestprogram_by(6);
        if (!empty($otherPrograms)) {
            foreach ($otherPrograms as $prog) {
                // Skip current program
                if ($prog->id != $Package->id) {
                    $prog_img = '';
                    if (!empty($prog->banner_image) && $prog->banner_image != "a:0:{}") {
                        $imgList = unserialize($prog->banner_image);
                        if (!empty($imgList[0])) {
                            $prog_img = IMAGE_PATH . 'package/banner/' . $imgList[0];
                        }
                    }

                    if (empty($prog_img)) {
                        $siteRegulars = Config::find_by_id(1);
                        $prog_img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
                    }

                    $program_detail .= '


                                        <!-- single post -->
                                    <div class="ul-inner-sidebar-post">
                                        <div class="img">
                                            <img src="' . $prog_img . '" alt="' . $prog->title . '">
                                        </div>

                                        <div class="txt">
                                            <h4 class="title"><a href="' . BASE_URL . 'program/' . $prog->slug . '">' . $prog->title . '</a></h4>
                                            <span class="date"> <span>' . date("M d, Y", strtotime($prog->program_date)) . '</span></span>
                                        </div>
                                    </div>';
                }
            }
        }

        $program_detail .= '
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        ';

        $jVars['module:program-detail'] = $program_detail;
    }
}
