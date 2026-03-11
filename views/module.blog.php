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







// New Home Page Blog List for Ideal Model
$homelatestblog = '';
if (defined('HOME_PAGE')) {
    $latestBlogs = Blog::get_latestblog_by(1000);
    if (!empty($latestBlogs)) {
        $blogItems = '';
        foreach ($latestBlogs as $blog) {
            $linksrc = BASE_URL . 'blog/' . $blog->slug;
            $blogDate = date('F d, Y', strtotime($blog->blog_date));
            $imgsrc = IMAGE_PATH . 'blog/' . $blog->image;

            $blogItems .= '
            <div class="col-lg-4 col-md-6 wow fadeInRight">
                <div class="article-list">
                    <div class="at-thumbnail">
                        <a href="' . $linksrc . '">
                            <img src="' . $imgsrc . '" alt="' . $blog->title . '" />
                        </a>
                        <span class="blog-tag"> ' . $blog->category . ' </span>
                    </div>
                    <div class="article-content">
                        <div class="artl-bottom">
                            <ul class="d-flex justify-content-start">
                                <li>' . $blogDate . '</li>
                            </ul>
                        </div>
                        <div class="artl-detail">
                            <a href="' . $linksrc . '"><h4>' . $blog->title . '</h4></a>
                            <p>' . $blog->brief . '</p>
                        </div>
                    </div>
                </div>
            </div>';
        }

        $homelatestblog = '
        <section class="home-3 blog-article bg-white">
            <div class="container">
                <div class="section-title sc-center justify-content-center text-center borderline wow fadeInLeft">
                    <div class="title-top">
                        <div class="title-quote">
                            <span class="bg-white">Our Blogs</span>
                        </div>
                        <h2>LATEST <span class="cl-blue">BLOG</span> & <span class="cl-blue">EVENTS</span></h2>
                    </div>
                </div>

                <div class="blog-wrap">
                    <div class="row">
                        ' . $blogItems . '
                    </div>
                </div>
            </div>
        </section>';
    }
}
$jVars['module:home-blog-list'] = $homelatestblog;




// Blog Detail Page

$blog_detail_header = $blog_detail_content = '';
if (defined("BLOG_DETAIL_PAGE")) {
    $slug = !empty($_REQUEST['slug']) ? $_REQUEST['slug'] : '';
    $Blogs = Blog::find_by_slug($slug);

    if (!empty($Blogs)) {
        $blogDate = date('F d, Y', strtotime($Blogs->blog_date));
        $imgsrc = IMAGE_PATH . 'blog/' . $Blogs->image;

        // Detail Header Section
        $blog_detail_header = '
        <section class="blog-top-title">
            <div class="bg_bar_title">
                <h1 class="cl-white">' . $Blogs->title . '</h1>
                <p class="cl-white">' . $blogDate . '</p>
            </div>
            <div class="bg__bar_image">
                <img src="' . $imgsrc . '" alt="' . $Blogs->title . '" />
            </div>
        </section>';

        // Recent Posts (Sidebar)
        $recent_posts_html = '';
        $recentBlogs = Blog::get_latestblog_by(4); // Get 4 to skip current
        if (!empty($recentBlogs)) {
            foreach ($recentBlogs as $rec) {
                if ($rec->id != $Blogs->id) {
                    $recLink = BASE_URL . 'blog/' . $rec->slug;
                    $recDate = date('F d, Y', strtotime($rec->blog_date));
                    $recImg = IMAGE_PATH . 'blog/' . $rec->image;
                    
                    $recent_posts_html .= '
                    <div class="customize-item d-flex mb-3">
                        <div class="sv-image pr-3">
                            <img src="' . $recImg . '" alt="' . $rec->title . '" />
                        </div>
                        <div class="customize-ct m-0">
                            <h6 class="mb-0">
                                <a href="' . $recLink . '">' . $rec->title . '</a>
                            </h6>
                            <span class="cust-meta"> ' . $recDate . '</span>
                        </div>
                    </div>';
                }
            }
        }

        // Detail Content Section
        $blog_detail_content = '
        <section class="blog__details p-0">
            <div class="container">  
                <div class="row">
                    <div class="col-lg-8">
                        <div class="bg__contents">
                            <div class="author__datetime">
                                <ul>
                                    <li><a href="#"><i class="far fa-user-circle"></i> ' . ($Blogs->author ? $Blogs->author : 'Ideal Model School') . '</a></li>
                                    <li><i class="far fa-calendar"></i> ' . $blogDate . '</li>
                                </ul>
                            </div>
                            <div class="bg__only_detail">
                                ' . $Blogs->content . '
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-12 aside-sidebar customize-wrap wow fadeInUp">
                        <div class="sidebar-course mb-4">
                            <div class="sidebar-title">
                                <h4>YOU MIGHT ALSO ENJOY</h4>
                            </div>
                            ' . $recent_posts_html . '
                        </div>
                    </div>
                </div>
            </div>
        </section>';
    } else {
        redirect_to(BASE_URL);
    }
}

$jVars['module:blog-detail-header'] = $blog_detail_header;
$jVars['module:blog-detail-content'] = $blog_detail_content;
