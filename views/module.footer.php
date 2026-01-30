<?php
$siteRegulars = Config::find_by_id(1);
$lastElement = '';
$phonelinked = '';
$whatsapp = '';
$tellinked = '';
$contact = '';

$tellinked = '';

$telno = array_map('trim', explode(',', $siteRegulars->contact_info));

foreach ($telno as $index => $tel) {

    // remove spaces for tel link
    $cleanTel = str_replace(' ', '', $tel);

    $tellinked .= '<a href="tel:+977' . $cleanTel . '">
                        <i class="flaticon-telephone-call"></i>+977 ' . $tel . '
                   </a>';

    // separator except last item
    if ($index !== array_key_last($telno)) {
        $tellinked .= ' / ';
    }
}




$office = '';
$ot = explode(",", $siteRegulars->pobox);

$first = trim(array_shift($ot));
$office .= '<span>' . $first . '</span>';

foreach ($ot as $o) {
    $o = trim($o);
    $office .= ', <span>' . $o . '</span>';
}


$emailinked = '';
$emails = explode(",", $siteRegulars->email_address);

foreach ($emails as $index => $email) {
    $email = trim($email); // Clean up any stray spaces
    
    // Add a comma separator for every email after the first one
    if ($index > 0) {
        $emailinked .= ', ';
    }

    $emailinked .= '<a href="mailto:' . $email . '">';
    
    // Include the icon only for the very first email to match your static design
    if ($index === 0) {
        $emailinked .= '<i class="flaticon-mail"></i>';
    }
    
    $emailinked .= $email . '</a>';
}

$whatsapp = '';
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement . '</a>/';
foreach ($phoneno as $phone) {

    $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank" rel="noreferrer">' . $phone . '</a>';
    if (end($phoneno) != $phone) {
        $phonelinked .= '/';
    }
}
$breif = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($siteRegulars->breif));
$icons = '';
if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $icons .= '
            <a href="' . $socialRow->linksrc . '" class="ms-2" target="_blank" rel="noreferrer noopener">
                <img src="' . IMAGE_PATH . 'social/' . $socialRow->image . '" height="20" alt="">
            </a>
        ';
    }
}


$footer = '




    <footer class="ul-footer">
        <div class="ul-footer-middle">
            <div class="ul-footer-container">
                <div class="ul-footer-middle-wrapper wow animate__fadeInUp">
                    <div class="ul-footer-widget ul-nwsltr-widget">
                        <h3 class="ul-footer-widget-title">Jayanti Memorial Trust</h3>
                        <div class="ul-footer-widget-links ul-footer-contact-links">
                            <a href=""><i class="flaticon-pin"></i>' . $siteRegulars->fiscal_address . '</a>
                            ' . $emailinked . '
                            ' . $tellinked . '
                        </div>
                        <p class="ul-footer-about-txt map3"><a href=" ' . $siteRegulars->mapping . '">View Google Map</a></p>
                        <div class="ul-footer-socials">
                            ' . $jVars['module:socilaLinkbtm'] . '
                        </div>
                    </div>

                    <div class="ul-footer-widget ul-nwsltr-widget">
                        <h3 class="ul-footer-widget-title">Patron of the Trust</h3>
                        <div class="ul-footer-widget-links ul-footer-contact-links">
                            <a href="#"><img src="' . BASE_URL . 'template/web/assets/img/fishtail.png" alt=""
                                    style="width: 200px;background: #ffffff;"></a>
                        </div>
                    </div>

                    <div class="ul-footer-widget">
                        <h3 class="ul-footer-widget-title">What’s New</h3>
                        <iframe
                            src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FJayantiMemorialTrust%2F&tabs=timeline&width=300&height=230&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
                            width="300" height="230" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                            allowfullscreen="true"
                            allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer bottom -->
        <div class="ul-footer-bottom">
            <div class="ul-footer-container">
                <div class="ul-footer-bottom-wrapper">
                    <p class="copyright-txt">
                    ' . $jVars['site:copyright'] . '
                    </p>
                    
                    <div class="ul-footer-bottom-nav text-white">Developed By:<a href="https://longtail.info/"
                            target="_blank">Longtail e-media</a> </div>
                </div>
            </div>
        </div>

        <!-- vector -->
        <div class="ul-footer-vectors">
            <img src="assets/img/footer-vector-img.png" alt="Footer Image" class="ul-footer-vector-1">
        </div>
    </footer>



    <div class="whats_app">
        <a href="https://wa.me/' . $siteRegulars->whatsapp_a . '" target="_blank" rel="noreferrer" class="whatsapp">
            <img src="' . BASE_URL . 'template/web/assets/img/icon/whatsapp.png" class="whatsapp_img" alt="whatsapp">
        </a>
    </div>';



$jVars['module:footer'] = $footer;
