<?php
$bl =  '';
$singleblog = '';
$singleblog_more = '';

if (defined('BLOG_PAGE')) {
    $record = Blog::get_allblog();
    $linkTarget = '';
    $pagelink = '';
    if (!empty($record)) {

        $counter = 0; // NEW: counter to track which blog we're on

        foreach ($record as $homebl) {

            if (!empty($homebl->linksrc)) {
                $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL . $homebl->linksrc;
            } else {
                $linksrc = BASE_URL . 'blog/' . $homebl->slug;
            }

            $blog_html = '
                    <!-- single blog -->
                    <div class="col">
                        <div class="ul-blog ul-blog-2">
                            <div class="ul-blog-img"><img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="' . $homebl->title . '">
                                <div class="date">
                                    <span class="number">' . date('d', strtotime($homebl->blog_date)) . '</span>
                                    <span class="txt">' . date('M Y', strtotime($homebl->blog_date)) . '</span>
                                </div>
                            </div>
                            <div class="ul-blog-txt">
                                <div class="ul-blog-infos">
                                    <!-- single info -->
                                    <div class="ul-blog-info">
                                        <span class="icon"><i class="flaticon-account"></i></span>
                                        <span class="text font-normal text-[14px] text-etGray">' . $homebl->author . '</span>
                                    </div>
                                </div>
                                <a href="' . BASE_URL . 'impact/' . $homebl->slug . '" class="ul-blog-title">' . $homebl->title . '</a>
                                <a href="' . BASE_URL . 'impact/' . $homebl->slug . '" class="ul-blog-btn">Read More <span class="icon"><i class="flaticon-next"></i></span></a>
                            </div>
                        </div>
                    </div>';

            // NEW: Add to first 3 blogs OR to "load more" section
            if ($counter < 3) {
                $singleblog .= $blog_html;
            } else {
                $singleblog_more .= $blog_html;
            }

            $counter++; // Increment counter
        }

        // Build the final HTML
        $bl = '
        <section class="ul-blogs-2 ul-section-spacing">
            <div class="ul-container wow animate__fadeInUp">
                <div class="row row-cols-md-3 row-cols-2 row-cols-xxs-1 ul-bs-row justify-content-center">
                    ' . $singleblog . '
                </div>

                <span id="dots">...</span>
                <span id="more">
                    <div class="row row-cols-md-3 row-cols-2 row-cols-xxs-1 ul-bs-row justify-content-center mt-4">
                        ' . $singleblog_more . '
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
        </section>';
    } else {
        redirect_to(BASE_URL);
    }
}
$jVars['module:bloglist'] = $bl;




// Home Page Blog List
$linkTarget = '';
$homebloglist = '';
$homeblogs = '';
if (defined('HOME_PAGE')) {
    $homeblog = Blog::get_latestblog_by(3);
    // $homeblogs = Blog:: get_latestblog_by(3);
    if (!empty($homeblog)) {

        foreach ($homeblog as $homebl) {

            if (!empty($homebl->linksrc)) {
                // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL . $homebl->linksrc;
            } else {
                $linksrc =  BASE_URL . 'blog/' . $homebl->slug;
            }
            $homebloglist .= '
                <!-- single blog -->
                <div class="col">
                        <div class="ul-blog ul-blog-2">
                            <div class="ul-blog-img"><img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="' . $homebl->title . '">
                                <div class="date">
                                    <span class="number">' . date('d', strtotime($homebl->blog_date)) . '</span>
                                    <span class="txt">' . date('M Y', strtotime($homebl->blog_date)) . '</span>
                                </div>
                            </div>
                            <div class="ul-blog-txt">
                                <div class="ul-blog-infos">
                                    <!-- single info -->
                                    <div class="ul-blog-info">
                                        <span class="icon"><i class="flaticon-account"></i></span>
                                        <span class="text font-normal text-[14px] text-etGray">' . $homebl->author . '</span>
                                    </div>
                                </div>
                                <a href="' . BASE_URL . 'impact/' . $homebl->slug . '" class="ul-blog-title">' . $homebl->title . '</a>
                                <a href="' . BASE_URL . 'impact/' . $homebl->slug . '" class="ul-blog-btn">Read More <span class="icon"><i
                                            class="flaticon-next"></i></span></a>
                            </div>
                        </div>
                    </div>
           
                  
           ';
        }
        $homeblogs = '


        <section class="ul-blogs-2 ul-section-spacing">
            <div class="ul-container wow animate__fadeInUp">
                <div class="ul-section-heading">
                    <div class="left">
                        <span class="ul-section-sub-title"> Empowering lives through meaningful activities </span>
                        <h2 class="ul-section-title">Recent Activities</h2>
                    </div>

                    <a href="' . BASE_URL . 'impact' . '" class="ul-btn"><i
                            class="flaticon-fast-forward-double-right-arrows-symbol"></i> View All</a>
                </div>

                <div class="row row-cols-md-3 row-cols-2 row-cols-xxs-1 ul-bs-row justify-content-center">
                    ' . $homebloglist . '

                </div>
            </div>
        </section>

        ';
    }
}

$jVars['module:homebloglist'] = $homeblogs;




// Blog Detail Page

$blog_detail = $recent_posts = $blog_detail_title = '';
if (defined("BLOG_DETAIL_PAGE")) {
    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $Blogs = Blog::find_by_slug($slug);
    //pr($Blogs);


    if (!empty($slug)) {
        $blog_detail_title .= '
        <section class="ul-breadcrumb ul-section-spacing">
            <div class="ul-container">
                <h2 class="ul-breadcrumb-title">' . $Blogs->title . '</h2>
            </div>
        </section>
        ';
        $jVars['module:blog-detail-title'] = $blog_detail_title;

        // Get blog images
        $blogImages = BlogImage::getImagelist_by($Blogs->id);
        $galleryHtml = '';
        if (!empty($blogImages)) {
            foreach ($blogImages as $blogImg) {
                $file_path = SITE_ROOT . 'images/blog/blogimages/' . $blogImg->image;
                if (file_exists($file_path) && !empty($blogImg->image)) {
                    $galleryHtml .= '
                            <div class="col-md-3 images" data-class="' . $blogImg->blogid . '" data-src="' . IMAGE_PATH . 'blog/blogimages/' . $blogImg->image . '">
                                <img src="' . IMAGE_PATH . 'blog/blogimages/' . $blogImg->image . '" class="img-fluid">
                            </div>';
                }
            }
        }

        // Only show gallery section if there are images
        $gallerySection = '';
        if (!empty($galleryHtml)) {
            $gallerySection = '
                <section class="main text-center">
                    <div class="container-fluid">
                        <h3 class="text-center" style="color:#d93431;">Memories / Gallery</h3>
                        <div class="row" id="gallery">
                            ' . $galleryHtml . '
                        </div>
                    </div>
                </section>';
        }

        $blog_detail .= '



        <section class="ul-service-details ul-section-spacing">
            <div class="ul-container">
                <div>
                    <div class="ul-service-details-txt">
                        <h3 class="ul-service-details-inner-title">' . date('M jS Y', strtotime($Blogs->blog_date)) . '</h3>
                         ' . $Blogs->content . '                    
                    </div>
                </div>

                ' . $gallerySection . '
            </div>
        </section>

   ';
        $jVars['module:blog-detail'] = $blog_detail;


        // Recent Posts Sidebar
        $recent_posts = '';
        $recents = Blog::get_latestblog_by(3);

        if (!empty($recents)) {
            $recent_posts .= '<div class="widget recent-post">
        <h5 class="widget-title">Recent Posts</h5>';

            foreach ($recents as $Blogs) {
                // Skip current blog
                if ($recent->title != $Blogs->title) {
                    $recent_posts .= '
            <div class="recent-post-single">
                <div class="recent-post-img">
                    <img src="' . IMAGE_PATH . 'blog/' . $Blogs->image . '" alt="thumb">
                </div>
                <div class="recent-post-bio">
                    <h6><a href="' . BASE_URL . 'blog/' . $Blogs->slug . '">' . $Blogs->title . '</a></h6>
                    <span><i class="far fa-clock"></i>' . date("d M Y", strtotime($Blogs->blog_date)) . '</span>
                </div>
            </div>';
                }
            }

            $recent_posts .= '</div>'; // close widget
        }

        $jVars['module:blog-recent-posts'] = $recent_posts;
    } else {
        $blog_detail .= '
        <!--================ Breadcrumb ================-->
        <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="' . BASE_URL . 'template/web/images/default.jpg">
            <div class="container wide">
                <h1 class="mad-page-title">About Us</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="' . BASE_URL . 'home" class="mad-link">Home</a></span> /
                    <span>Blogs</span>
                </nav>
            </div>
        </div>
        
        <div class="mad-title-wrap align-center">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="mad-pre-title">Make memories happen</div>
                            <h2 class="mad-page-title">Club Himalaya Experience</h2>
                        </div>
                    </div>
                </div>
                
                
                <div class="mad-section no-pt mad-section-pb-mobile mad-section--stretched-content-no-px mad__colorizer--scheme-color-2">
                <div class="mad-entities mad-owl-center mad-pricing type-3 with-img-border mad-grid owl__carousel mad-owl__moving mad-grid--cols-2 nav-size-2 no-dots d-flex flex-wrap">
                  
                ';
        $Blogs = Blog::get_allblog();
        //pr($Blogs);
        foreach ($Blogs as $homebl) {

            if (!empty($homebl->linksrc)) {
                // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL . $homebl->linksrc;
            } else {
                $linksrc = BASE_URL . 'blog/' . $homebl->slug;
            }
            $blog_detail .= '
                            <!--================ Entity ================-->
                                <div class="mad-entity-media mad-owl-center-img">
                                    <a href="' . $linksrc . '" ' . $linkTarget . '>
                                        <img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="' . $homebl->title . '" />
                                    </a>
                                </div>
                                <div class="mad-entity__content mad-owl-center-element">
                                    <div class="mad-entity-inner">
                                        <h4 class="mad__entity-title">' . $homebl->title . '</h4>
                                        <h4 class="mad__entity-title">' . date("d M Y", strtotime($homebl->blog_date)) . '</h4>
                                        <p>
                                            A Rare Blend Of Nature And Modern Amenities and has become synonymous with Nagarkot.
                                        </p>
                                        <div class="mad-entity-footer">
                                            <a href="' . $linksrc . '" ' . $linkTarget . ' class="btn btn-big">View More</a>
                                        </div>
                                    </div>
                                </div>

           ';
        }
        $blog_detail .= '
    </div>
    
                </div>
            ';
    }
}


$jVars['module:blog-detail'] = $blog_detail;
$jVars['module:blog-recent-posts'] = $recent_posts;
