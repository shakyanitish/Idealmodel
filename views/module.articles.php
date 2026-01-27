<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = Article::find_by_id(22);

// -----------------------------------------------------------------
// -----------------------------------------------------------------

if (!empty($homearticle)) {


    $img1 = BASE_URL . 'assets/img/about/01.jpg'; // default image 1
    $img2 = BASE_URL . 'assets/img/about/02.jpg'; // default image 2

    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);

        if (!empty($imageList[0])) {
            $file_path1 = SITE_ROOT . 'images/articles/' . $imageList[0];
            $img1 = (file_exists($file_path1)) 
                ? IMAGE_PATH . 'articles/' . $imageList[0] 
                : $img1;
        }

        if (!empty($imageList[1])) {
            $file_path2 = SITE_ROOT . 'images/articles/' . $imageList[1];
            $img2 = (file_exists($file_path2)) 
                ? IMAGE_PATH . 'articles/' . $imageList[1] 
                : $img2;
        }
    }

    // -----------------------------
    // TITLE + CONTENT
    // -----------------------------
    $title = !empty($homearticle->title) ? $homearticle->title : '';
    $content = !empty($homearticle->content) ? $homearticle->content : '';

    // -----------------------------
    // BUILD DYNAMIC HTML
    // -----------------------------
    $t .= '
    <div class="about-area py-120">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-left wow fadeInLeft" data-wow-delay=".25s">
                        <div class="about-img">
                            <img class="about-img-1" src="' . $img1 . '" alt="">
                            <img class="about-img-2" src="' . $img2 . '" alt="">
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="about-right wow fadeInUp" data-wow-delay=".25s">
                        <div class="site-heading mb-3">
                            <h2 class="site-title">' . $title . '</h2>
                        </div>

                        <div class="about-text">
                            ' . $content . '
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>';
}



$jVars['module:aboutarticle'] = $t;

// -----------------------------------------------------------------
// -----------------------------------------------------------------
$resinnh = '';

// if (defined('HOME_PAGE')) {
//     $recInn = Article::homepageArticle();
//     if (!empty($recInn)) {
//         foreach ($recInn as $innRow) {
            
//             $images = ($innRow->image != "a:0:{}") ? unserialize($innRow->image) : [];
            
//             $imglink1 = (!empty($images[0])) 
//                         ? IMAGE_PATH . 'articles/' . $images[0] 
//                         : BASE_URL . 'assets/img/about/01.jpg';
                        
//             $imglink2 = (!empty($images[1])) 
//                         ? IMAGE_PATH . 'articles/' . $images[1] 
//                         : BASE_URL . 'assets/img/about/02.jpg'; 

//             $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
//             $readmore = '';
//             if (!empty($innRow->linksrc)) {
//                 $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
//                 $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
//                 $readmore = '<a href="' . $linksrc . '" title="">see more</a>';
//             } else {
//                 $readmore = (count($content) > 1) 
//                     ? '<a href="' . BASE_URL . 'page/' . $innRow->slug . '" title="">Read more...</a>' 
//                     : '';
//             }
            
//             $resinnh .= '


//                             ' . $content[0] . '
//                             ';
//         }
//     }
    
// }

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle();
    // pr($recInn);
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
            $image= unserialize($innRow->image);
            $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
            $readmore = '';
            if (!empty($innRow->linksrc)) {
                $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
                $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
                $readmore = '<a href="' . $linksrc . '" title="">see more</a>';
            } else {
                $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . 'page/' . $innRow->slug . '" title="">Read more...</a>' : '';
            }
            $resinnh .= '

                    ' . $innRow->content . '
            
            ';
        }
    }
    
}

$jVars['module:home-article'] = $resinnh;


// -----------------------------------------------------------------

$aboutdetail = $imageList = $aboutbred = '';
$abouttbred = '';
// pr($_REQUEST);  // this will show all request parameters


if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
// pr('here');
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);
    // pr($slug);
    if (!empty($recRow)) {
        $title = !empty($recRow->title) ? $recRow->title : '';

   // Default article banner
        if (!empty($siteRegulars->article_upload)) {
            $defaultImg = IMAGE_PATH . 'preference/articles/' . $siteRegulars->article_upload;
        } else {
            $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }

        // Start with default banner
        $imglink = $defaultImg;

        // If the article has images
        if (!empty($recRow->image) && $recRow->image != "a:0:{}") {

            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);

            $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];

            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
            }
        }
        $aboutdetail .=
            '
            <section class="no-top no-bottom jarallax vertical-center">
                <img id="main-bg-image" src="' . $imglink . '" alt="Main Image" class="img-fluid vh-100 w-100 opacity-50" style="transition: opacity 0.3s; object-fit: cover;">
                <div class="de-overlay v-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <h1 id="section-title">' . $title . '</h1>
                                <h3 class="subtitle">' . $recRow->sub_title . '</h3>
                                <p class="lead"> ' .$recRow->brief . '</p>
                                <div id="category-content" class="mt-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>




            <section id="section-intro" class="pt80" data-bgcolor="#3b1512" style="background-color: rgb(59, 21, 18); background-size: cover;">
                <div class="container" style="background-size: cover;">
                    <div class="row align-items-center" style="background-size: cover;">
                        <div class="col-lg-12 wow fadeIn animated" style="visibility: visible; animation-name: fadeIn; background-size: cover;">
                            <div class="padding20" style="background-size: cover;">
                                <h5 id="about-title">' . $recRow->inner_title .'  </h5>
                                <h2 class="title mb10" id="about-subtitle">' . $recRow->innersub_title .'  <span class="small-border"></span></h2>
                            </div>
                        </div>
                        <div class="col-lg-12 wow fadeIn d-flex justify-content-center animated" style="visibility: visible; animation-name: fadeIn; background-size: cover;">
                            <div class="row w-100" style="background-size: cover;">
                                     ' . $recRow->content .'  
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
            ';

    
    } 
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-bread'] = $abouttbred;


$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
    <div class="home-content">
        ' . $content[0] . ' ' . $readmore . '
    </div>';
}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

    // pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
        $resinnh1 .= $recInn1->content;
    }
}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

        $resinnh1 .= $recInn1->content;
    }
}

$jVars['module:home_facilities'] = $resinnh1;


// $resinnh2 = '';

// if (defined('HOME_PAGE')) {

//     $resinnh2 .= '';


//     // $recInn2 = Article::find_by_id(16);
//     $recInn2 = Article::find_all_active_uc();

//     if (!empty($recInn2)) {
//         foreach ($recInn2 as $recInn) {

//             $resinnh2 .=  '
//             <section id="' . $recInn->slug . '" class="mod-about">
//         <div class="modal-toggle">
//             <a href="#" id="modal-close" title="close">close</a>
//         </div>
//            <div class="row about-content">
//            <div class="row about-header">
//            <div class="twelve tweleve1 columns">
//                <div class="icon-wrap">
//                    <i class="icon"></i></div>
//                <h1>
//                    ' . $recInn->title . '</h1>
//            </div></div>
//             ';
//             $resinnh2 .=
//                 $recInn->content;
//             if ($recInn->id == 16) {
//                 $resinnh2 .= '  ' . $jVars['module:contact:home'] . '';
//             }
//             $resinnh2 .= '
// </div>
//             </section>';
//         }
//     }
// }

// $jVars['module:home_shinee'] = $resinnh2;