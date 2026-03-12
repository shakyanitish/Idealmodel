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
        $tellinked .= ' ';
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
$emails = array_map('trim', explode(',', $siteRegulars->email_address));

foreach ($emails as $index => $email) {
    $emailinked .= '<a href="mailto:' . $email . '">
                        <i class="flaticon-mail"></i>' . $email . '
                   </a>';

    // separator except last item
    if ($index !== array_key_last($emails)) {
        $emailinked .= ' ';
    }
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

    <footer class="wow fadeInUp" id="footer">
        <div class="footer-upper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="f-maincontent">
                            <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->fb_upload . '" alt />
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="f-maincontent">
                            <ul>
                            ' . $jVars['module:socilaLinkFooter'] . '
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <div class="f-maincontent">
                            <h4>About</h4>
<<<<<<< HEAD
                            ' . $breif[0] . '
=======
                            <p>' . $breif[0] . '</p>
>>>>>>> d9ebb2d707b27fed4fd37ced6b17a62213a4478c
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4">
                        <div class="ft-lists">
                            <h4>Contact</h4>
                            <ul>
                                <li><a href="#">' . $siteRegulars->fiscal_address . '</a></li>
<<<<<<< HEAD
                                <li><a href="#">(+977)' . $siteRegulars->contact_info . '</a></li>
=======
                                <li><a href="#">' . $siteRegulars->contact_info . '</a></li>
>>>>>>> d9ebb2d707b27fed4fd37ced6b17a62213a4478c
                                <li><a href="#">' . $siteRegulars->email_address . '</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-4">
                        <div class="ft-lists">
                            <h4>Quick Links</h4>
                            <ul>
                                ' . $jVars['module:footer-menu-list'] . '
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="copyright-main">
                <div class="container">
                    <div class="copyright-text d-flex justify-content-center">
                        <p class="m-0">' . $jVars['site:copyright'] . '</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>








 ';



$jVars['module:footer'] = $footer;
