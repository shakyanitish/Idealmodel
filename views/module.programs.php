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
        $programLink = BASE_URL . 'package/' . $program->slug;
        
        // Get title
        $title = !empty($program->title) ? $program->title : 'Program';
        
        // Get description from detail or content
        $description = !empty($program->detail) ? $program->detail : (!empty($program->content) ? $program->content : 'View details for more information.');
        
        // Truncate description to reasonable length
        if (strlen($description) > 150) {
            $description = substr($description, 0, 150) . '...';
        }
        
        $programsHtml .= '
                        <!-- single slide -->
                        <div class="swiper-slide">
                            <div class="ul-service">
                                <div class="ul-service-img">
                                    <img src="' . $imglink . '" alt="' . htmlspecialchars($title) . '">
                                </div>
                                <div class="ul-service-txt">
                                    <h3 class="ul-service-title"><a href="' . $programLink . '">' . htmlspecialchars($title) . '</a></h3>
                                    <p class="ul-service-descr">' . $description . '</p>
                                    <a href="' . $programLink . '" class="ul-service-btn"><i class="flaticon-up-right-arrow"></i> View Details</a>
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
?>
