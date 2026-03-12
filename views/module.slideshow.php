<?php
/* First Slideshow */
$reslide = '';
$mini = '';
$miniThumbs = '';
$Records = Slideshow::getSlideshow_by(0);

if ($Records) {
    $i = 0;

    // Use the first active record for the single hero section
    $RecRow = $Records[0];
    $video_path = IMAGE_PATH . 'slideshow/video/' . $RecRow->source_vid;

    if ($RecRow->mode == 2) { // Video mode
        if ($RecRow->type == 0 && !empty($RecRow->source_vid)) { // Uploaded Video
            $reslide = '
            <div class="header-video">
                <div id="hero_video">
            <video id="video1" width="100%" height="auto" autoplay="" loop="" muted="">
                        <source src="' . $video_path . '" type="video/mp4">
                does not support
                    </video>
                    <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
                        <div class="container">
                            <div class="intro_title wow fadeInUp">
                                <h3 class="">' . $RecRow->content . '</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';
        }
    } else { // Image mode
        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
        if (file_exists($file_path) && !empty($RecRow->image)) {
            $reslide = '
            <div class="header-video">
                <div id="hero_video">
                    <img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" width="100%" height="auto" alt="' . $RecRow->title . '" style="object-fit: cover; min-height: 100vh;">
                    <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
                        <div class="container">
                            <div class="intro_title wow fadeInUp">
                                <h3 class="">' . $RecRow->content . '</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';
        }
    }
}



$jVars["module:slideshow-uc"] = $reslide;
?>