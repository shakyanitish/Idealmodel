<?php
$siteRegulars = Config::find_by_id(1);
$lastElement = '';
$phonelinked = '';
$whatsapp = '';
$tellinked = '';
$contact = '';

$telno = array_map('trim', $telno); // Remove extra spaces

// Take the first number
$lastElement = array_shift($telno);
$tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" title="' . $lastElement . '">' . $lastElement . '</a>&nbsp;';

// Loop through remaining numbers
foreach ($telno as $tel) {
    $tellinked .= ' <a href="tel:' . $tel . '" target="_blank" title="' . $tel . '">' . $tel . '</a>';
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
    $lastEmail = array_shift($emails);
    $emailinked .= '<a href="mailto:' . $lastEmail . '" target="_blank" rel="noreferrer">' . $lastEmail . '</a>';
    foreach ($emails as $email) {
        
        $emailinked .= ',<a href="mailto:' . $email . '" target="_blank" rel="noreferrer">' . $email . '</a>';
        if(end($emails)!= $email){
        $emailinked .= ',';
        }   
}
$whatsapp='';
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement. '</a>/';
foreach ($phoneno as $phone) {
    
    $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank" rel="noreferrer">' . $phone . '</a>';
    if(end($phoneno)!= $phone){
    $phonelinked .= '/';
    }   
}
$breif = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($siteRegulars->breif));
$icons = '';
if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $icons .= '
            <a href="' . $socialRow->linksrc . '" class="ms-2" target="_blank" rel="noreferrer noopener">
                <img src="'.IMAGE_PATH.'social/' . $socialRow->image . '" height="20" alt="">
            </a>
        ';
    }
}


$footer = '

    <footer class="no-top pl20 pr20 fixed-bottom">
        <div class="subfooter">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 text-md-start text-center">'. $jVars['site:copyright'] .'<span class="id-color"></span></div>
                    <div class="col-md-6 text-md-end text-center">

                                            '. $jVars['module:footer-menu'] .'

                    </div>
                </div>
            </div>
        </div>
        <a href="#" id="back-to-top"></a>
    </footer>
    
    
    
    
    
    
    
    
    
    ';



$jVars['module:footer'] = $footer;






// <footer id="mad-footer" class="mad-footer footer-2">
//             <!--================ Footer row ================-->
//             <div class="mad-footer-main">
//                 <div class="container-fluid">

//                     <div class="row justify-content-between vr-size-2" style="border-bottom: 1px solid #857373;padding-bottom: 10px;margin-bottom: 26px;">
//                         <div class="col-xxl-4 col-xl-4">
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">' . $siteRegulars->sitename . '</h6>
//                                 <div class="mad-vr-list">
//                                     <ul>
//                                         <li>'. $siteRegulars->fiscal_address .'</li>
//                                         <li><b>Landline:</b> '. $tellinked .'</li>
//                                         <li><b>Phone:</b><a href= "tel:'. $siteRegulars->address .'" target="_blank" > '. $siteRegulars->address .'</a>(Viber, WhatsApp)</li>
//                                         <li><b>Email:</b><a href="mailto:'. $siteRegulars->email_address .'" target="_blank" class="mad-link"> '. $siteRegulars->email_address .'</a>
//                                         </li>
//                                     </ul>
//                                     <div class="mad-social-icons" style="margin-top:12px;">
//                                     <ul>
//                                     ' . $jVars['module:socilaLinkbtm'] . ' 
//                                     </ul>
//                                     </div>
//                                 </div>
//                             </section>
//                         </div>

//                         <div class="col-xl-2 col-lg-3 col-md-3">
//                             <!--================ Widget ================-->
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">Quick Links</h6>
//                                 <div class="mad-vr-list menu">
//                                 '. $jVars['module:footer-menu'] .'
                                   
//                                 </div>
//                             </section>
//                             <!--================ End of Widget ================-->
//                         </div>

//                         <div class="col-xxl-4 col-xl-4">
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">Kathmandu Reservation Office</h6>
//                                 <div class="mad-vr-list">
//                                     <ul>
//                                         <li>'. $siteRegulars->mail_address.'</li>
//                                         <li><b>Phone:</b> '. $phonelinked.'</li>
//                                         <li><b>P.O Box:</b> '. $siteRegulars->pobox.'</li>
//                                         <li><b>Email:</b><a href="mailto:'. $siteRegulars->contact_info2.'" class="mad-link"> '. $siteRegulars->contact_info2.'</a>
//                                         </li>
//                                     </ul>
//                                 </div>
//                             </section>
//                         </div>

//                     </div>
//                     <div class="row justify-content-between vr-size-2">
//                         <div class="col-xl-4 col-lg-6 col-md-6">
//                             <!--================ Widget ================-->
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">Part Of</h6>
//                                 <div class="mad-vr-list">
//                                     <ul style="display:flex;">
//                                         <li style="margin-right: 20px;"><img src="template/web/images/awards/ace_footer_logo.png" alt="" style="width: 100px;"></li>
//                                         <li><img src="template/web/images/awards/logo-dark.png" alt="" style="width: 200px;"></li>
//                                     </ul>
//                                 </div>
//                             </section>
//                             <!--================ End of Widget ================-->
//                         </div>

                        
                        
//                         <div class="col-xl-5 col-lg-6 col-md-6">
//                             <!--================ Widget ================-->
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">Booking Engine</h6>
//                                 <div class="mad-vr-list">
//                                     <ul class="book-eng">
//                                     ' . $jVars['module:otatop'] . ' 
//                                     </ul>
//                                 </div>
//                             </section>
//                             <!--================ End of Widget ================-->
//                         </div>

//                         <div class="col-xl-3 col-lg-6 col-md-6">
//                             <!--================ Widget ================-->
//                             <section class="mad-widget">
//                                 <h6 class="mad-widget-title">Affiliated with</h6>
//                                 <div class="btn-set mad-logos">
//                                     <a href="#">
//                                         <img src="template/web/images/awards/han-logo.png" alt="" style="width: 70px;">
//                                     </a>

//                                     <a href="#">
//                                         <img src="template/web/images/awards/pata-logo.png" alt="" style="width: 70px;">
//                                     </a>
//                                 </div>
//                             </section>
//                             <!--================ End of Widget ================-->
//                         </div>

                        
//                     </div>

//                     <div class="mad-footer-bottom">
//                         <p class="copyrights align-center">
//                              '. $jVars['site:copyright'] .'
//                         </p>
//                     </div>
//                 </div>
//             </div>
//             <!--================ End of Footer row ================-->
//         </footer>
//         <!--================ End of Footer ================-->

        
//         </div>
        
        
        

//            ';
           

// $jVars['module:footer-booking'] = $footer;


// $footer2 = '
//  <footer class="group">
//       <ul class="footer-social">
//          <li><span><a href="mailto:' . $configRec->email_address . '"> ' . $configRec->email_address . '</a></span></li>
//          '.$jVars['module:socilaLinkbtm'].'
//       </ul>
//       <ul class="footer-copyright">
//          <li>'. $jVars['site:copyright'] .'</li>
//       </ul>
//    </footer>

// ';
// $jVars['module:footer-booking-2'] = $footer2;

// if(!empty($siteRegulars->whatsapp_a)){
// $whatsapp='
// <div class="messenger">
// <a href="'.$siteRegulars->whatsapp_a.'" target="_blank"><img src="'.BASE_URL.'template/web/images/whatsapp.png"></a>
// </div>';
// }
// else{
//     $whatsapp='';
// }

// $jVars['module:footer-whatsapp'] = $whatsapp;
