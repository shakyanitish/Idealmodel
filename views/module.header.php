<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_get_clean();
$sidebarlogo = '';
$header_class = (!defined('HOME_PAGE')) ? 'header_menu_detail' : '';

$header = '
    <header class="main_header_area">
        <div class="header_menu ' . $header_class . '">
            <nav class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-flex d-flex align-items-center justify-content-between w-100">
                        <div class="navbar-header">
                            <a class="navbar-brand text-center" href="' . BASE_URL . '' . '">
                                <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="image" />
                            </a>
                        </div>
                        

                        <div class="navbar-collapse1 w-100" id="bs-example-navbar-collapse-1">
                           ' . $jVars['module:main-menu'] . '   
                        </div>

                        <div id="slicknav-mobile"></div>
                    </div>
                </div>
            </nav>
        </div>
    </header>



';

$jVars['module:header'] = $header;

$sidebarlogo = '
                <a href="' . BASE_URL . 'home' . '">
                    <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="logo" class="logo">
                </a>



';

$jVars['module:sidebarlogo'] = $sidebarlogo;






// $header1 = '
//                 <header class="site-header">
//                <div class="logo">
//                	<a href="' . BASE_URL . 'home' . '"><img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" style="border-radius: 6%; background-color: white;"></a>
//                </div> 
//             </header>

//             <div id="main-content" class="twelve columns">
//                 ' . $jVars['module:slideshow-content'] . '
$headerscript = '';
$tellinked = '';
$telno = explode("/", $siteRegulars->contact_info);
$lastElement = array_shift($telno);
$tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement . '</a>/';
foreach ($telno as $tel) {

    $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank" rel="noreferrer">' . $tel . '</a>';
    if (end($telno) != $tel) {
        $tellinked .= '/';
    }
}
