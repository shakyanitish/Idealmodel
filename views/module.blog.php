<?php
$bl =  '';
$bl1 = '';  


if (defined('BLOG_PAGE')) {
    $record = Blog::get_allblog();
    $linkTarget='';
    $pagelink='';
    if (!empty($record)) {
        
        
            $bl1 .= '
            <!--================ Breadcrumb ================-->

        <div class="site-breadcrumb" style="background: url('. BASE_URL .'template/web/assets/img/breadcrumb/01.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">Inspiration Hub</h2>
            </div>
        </div>';
        $jVars['module:blogbread'] = $bl1;
        
            foreach ($record as $homebl) {
            
           if(!empty($homebl->linksrc)){
            // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
            $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL.$homebl->linksrc;
           }
           else{
                $linksrc= BASE_URL. 'blog/'. $homebl->slug;
           }
           $bl .='

                    <div class="col-md-6 col-lg-4">
                        <div class="blog-item wow fadeInUp" data-wow-delay=".25s">
                            <div class="blog-item-img">
                                <img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="' . $homebl->title . '">
                            </div>
                            <div class="blog-item-info">
                                <div class="blog-item-meta">
                                    <ul>
                                        <li><a href="#"><i class="far fa-user-circle"></i>' . $homebl->author . '</a></li>
                                        <li><a href="#"><i class="far fa-calendar-alt"></i> ' . date('d M Y', strtotime($homebl->blog_date)) . '</a></li>
                                    </ul>
                                </div>
                                <h4 class="blog-title">
                                    <a href="blog-detail">' . $homebl->title . '</a>
                                </h4>
                                <p>' . $homebl->brief . '
                                </p>
                                <a class="theme-btn" href=" ' . BASE_URL . 'blog/'.$homebl->slug .'">Read More<i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                  
           ';
        }
        $bl.='

        ';
    } else {
        redirect_to(BASE_URL);
    }
}
$jVars['module:bloglist'] = $bl;




// Home Page Blog List
$linkTarget='';
$homebloglist = '';
$homeblogs ='';
if (defined('HOME_PAGE')) {
    $homeblog = Blog:: get_latestblog_by(3);
    // $homeblogs = Blog:: get_latestblog_by(3);
    if (!empty($homeblog)) {
        
        foreach ($homeblog as $homebl) {
            
           if(!empty($homebl->linksrc)){
            // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
            $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL.$homebl->linksrc;
           }
           else{
                $linksrc=  BASE_URL. 'blog/' .$homebl->slug;
           }
           $homebloglist .='
                 <!--================ Entity ================-->


                  <div class="col-md-6 col-lg-4">
                        <div class="blog-item wow fadeInUp" data-wow-delay=".25s">
                            <div class="blog-item-img">
                                <img src="' . IMAGE_PATH . 'blog/' . $homebl->image . '" alt="Thumb">
                            </div>
                            <div class="blog-item-info">
                                <div class="blog-item-meta">
                                    <ul>
                                        <li><a href="#"><i class="far fa-user-circle"></i>' . $homebl->author . '</a></li>
                                        <li><a href="#"><i class="far fa-calendar-alt"></i>' . date('d M Y', strtotime($homebl->blog_date)) . '</a></li>
                                    </ul>
                                </div>
                                <h4 class="blog-title">
                                    <a href="blog-detail">' . $homebl->title . '</a>
                                </h4>
                                <p>' . $homebl->brief . '  
                                </p>
                                <a class="theme-btn" href="' . BASE_URL . 'blog/'.$homebl->slug .'">Read More<i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                            <!--================ End of Entity ================-->
           
                  
           ';
        }
        $homeblogs='



            <div class="blog-area py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <h2 class="site-title">Our Latest News & <span>Blog</span></h2>
                            <div class="heading-divider"></div>
                        </div>
                    </div>
                </div>
                <div class="row g-4">
                    '.$homebloglist.'
                </div>
            </div>
        </div>  

        ';
    }
}

$jVars['module:homebloglist'] = $homeblogs;




// Blog Detail Page

$blog_detail = $recent_posts = '';
if (defined("BLOG_DETAIL_PAGE") ) {
    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $Blogs = Blog::find_by_slug($slug);
    //pr($Blogs);
   

    if (!empty($slug)) {
        $blog_detail .= '
        <!--================ Breadcrumb ================-->

        <div class="site-breadcrumb" style="background: url('. BASE_URL .'template/web/assets/img/breadcrumb/01.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">Top Fishing Destinations in Nepal</h2>
            </div>
        </div>
        ';
        
        $blog_detail .= '
        <div class="blog-single py-120">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-8">
                        <div class="blog-single-wrapper">
                            <div class="blog-single-content">
                                <div class="blog-thumb-img">
                                    <img src="' . IMAGE_PATH . 'blog/' . $Blogs->image . '" alt="' . $Blogs->title . '">
                                </div>
                                <div class="blog-info">
                                    <div class="blog-details">
                                        <h3 class="blog-details-title mb-20">' . $Blogs->title . '</h3>
                                        <p class="mb-10">
                                          ' . $Blogs->content . '
                                        </p>
                                    </div>
                                </div>
                                  <div class="blog-comments">
                                    <div class="blog-comments-form">
                                        <h3>Leave A Comment</h3>
                                        <form id="contactform">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="input-group">
                                                        <span class="input-group-text"><i class="far fa-user-tie"></i></span>
                                                        <input type="text" class="form-control" name="name"
                                                            placeholder="Your Name*" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="input-group">
                                                        <span class="input-group-text"><i class="far fa-envelope"></i></span>
                                                        <input type="email" class="form-control" name="email"
                                                            placeholder="Your Email*" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="input-group textarea">
                                                        <span class="input-group-text"><i class="far fa-pen"></i></span>
                                                        <textarea name="message" cols="30" rows="5" class="form-control"
                                                            placeholder="Your Comment*"></textarea>
                                                    </div>
                                                </div>
                                                <div id="result_msg"></div>
                                                <div class="col-md-12">
                                                    <button type="submit" class="theme-btn" id="submit">Submit <i class="far fa-paper-plane"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <aside class="sidebar">
                            <!-- search-->
                             <!-- <div class="widget search">
                                <h5 class="widget-title">Find What You Need</h5>
                                <form class="search-form">
                                    <input type="text" class="form-control" placeholder="Search Blog...">
                                    <button type="submit"><i class="far fa-search"></i></button>
                                </form>
                            </div> -->
                            <!-- category -->
                             <!--<div class="widget category">
                                <h5 class="widget-title">Category</h5>
                                <div class="category-list">
                                    <a href="#"><i class="far fa-arrow-right"></i>Solo & Team Fishing<span>(10)</span></a>
                                    <a href="#"><i class="far fa-arrow-right"></i>Fishing Tour<span>(15)</span></a>
                                    <a href="#"><i class="far fa-arrow-right"></i>Fishing Competitions<span>(20)</span></a>
                                    <a href="#"><i class="far fa-arrow-right"></i>Fishing Guidence<span>(30)</span></a>
                                    <a href="#"><i class="far fa-arrow-right"></i>Fishing Equipments<span>(25)</span></a>
                                </div>
                            </div>-->

   ';
                                

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
        <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="'. BASE_URL .'template/web/images/default.jpg">
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
            
           if(!empty($homebl->linksrc)){
            // $pagelink = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
            $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL.$homebl->linksrc;
           }
           else{
                $linksrc= BASE_URL. 'blog/'. $homebl->slug;
           }
           $blog_detail .='
                            <!--================ Entity ================-->
                                <div class="mad-entity-media mad-owl-center-img">
                                    <a href="'.$linksrc.'" '.$linkTarget.'>
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
                                            <a href="'.$linksrc.'" '.$linkTarget.' class="btn btn-big">View More</a>
                                        </div>
                                    </div>
                                </div>
                            <!--================ End of Entity ================-->

           ';
    }
    $blog_detail .='
    </div>
    
                </div>
            ';
    
    }
}


$jVars['module:blog-detail'] = $blog_detail;
$jVars['module:blog-recent-posts'] = $recent_posts;


?>