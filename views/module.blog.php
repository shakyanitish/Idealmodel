<?php
$bl =  '';
$singleblog = '';
$singleblog_more = '';
$blogItems = '';

if (defined('BLOG_PAGE')) {
    $record = Blog::get_allblog();
    $linkTarget = '';
    $pagelink = '';
    if (!empty($record)) {
   
        foreach ($record as $homebl) {

            if (!empty($homebl->linksrc)) {
                $linkTarget = ($homebl->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($homebl->linktype == 1) ? $homebl->linksrc : BASE_URL . $homebl->linksrc;
            } else {
                $linksrc = BASE_URL . 'blog/' . $homebl->slug;
            }

            $blogDate = date('F d, Y', strtotime($homebl->blog_date));
            $imgsrc = IMAGE_PATH . 'blog/' . $homebl->image;

            $blogItems .= '
            <div class="col-lg-4 col-md-6 wow fadeInRight">
                <div class="article-list">
                    <div class="at-thumbnail">
                        <a href="' . $linksrc . '">
                            <img src="' . $imgsrc . '" alt="' . $homebl->title . '" />
                        </a>
                        <span class="blog-tag"> ' . $homebl->category . ' </span>
                    </div>
                    <div class="article-content">
                        <div class="artl-bottom">
                            <ul class="d-flex justify-content-start">
                                <li>' . $blogDate . '</li>
                            </ul>
                        </div>
                        <div class="artl-detail">
                            <a href="' . $linksrc . '"><h4>' . $homebl->title . '</h4></a>
                            <p>' . $homebl->brief . '</p>
                        </div>
                    </div>
                </div>
            </div>';
        }

        $bl = '
        <section class="home-3 blog-article bg-white">
            <div class="container">
                <div class="blog-wrap">
                    <div class="row">
                        ' . $blogItems . '
                    </div>
                </div>
            </div>
        </section>';
    } 
    else {
        $bl = '
        <section class="home-3 blog-article bg-white">
            <div class="container">
                <div class="blog-wrap">
 <h2 class="text-center">No blogs available at the moment.</h2>
                </div>
            </div>
        </section>';
    }
}
$jVars['module:bloglist'] = $bl;







// New Home Page Blog List for Ideal Model
$homelatestblog = '';
if (defined('HOME_PAGE')) {
    $latestBlogs = Blog::get_latestblog_by(3);
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
                            ' . $blog->brief . '
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
        $recentBlogs = Blog::get_latestblog_by(6); // Get 4 to skip current
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
