<?php
/*
* Contact form
*/
$rescont = '';
$img = '';
if (defined('CONTACT_PAGE')) {

    $siteRegulars = Config::find_by_id(1);

    // Phone links
    $tellinked = '';
    $telno = explode(",", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:+977' . str_replace(' ', '', $lastElement) . '" target="_blank">+977 ' . $lastElement . '</a><br>';
    foreach ($telno as $tel) {
        $tellinked .= '<a href="tel:+977' . str_replace(' ', '', $tel) . '" target="_blank">+977 ' . $tel . '</a>';
        if (end($telno) != $tel) {
            $tellinked .= '/';
        }
    }

    // Office address
    $office = '';
    $ot = explode(",", $siteRegulars->pobox);
    $first = trim(array_shift($ot));
    $office .= '<span>' . $first . '</span>';
    foreach ($ot as $o) {
        $o = trim($o);
        $office .= ', <span>' . $o . '</span>';
    }



    $emailinked = '';
    $emails = explode(",", $siteRegulars->email_address); // use only one field
    $emails = array_map('trim', $emails); // remove spaces
    $totalEmails = count($emails);
    $countEmail = 0;

    foreach ($emails as $email) {
        $countEmail++;
        $emailinked .= '<a href="mailto:' . $email . '" target="_blank" rel="noreferrer" title="' . $email . '">' . $email . '</a>';
        if ($countEmail < $totalEmails) {
            $emailinked .= '<br> '; // add comma only between emails
        }
    }


    // WhatsApp / phone links
    $phonelinked = '';
    $phoneno = explode("/", $siteRegulars->whatsapp);
    $lastElement = array_shift($phoneno);
    $phonelinked .= '<a href="tel:+977' . str_replace(' ', '', $lastElement) . '" target="_blank">' . $lastElement . '</a>/';
    foreach ($phoneno as $phone) {
        $phonelinked .= '<a href="tel:+977' . str_replace(' ', '', $phone) . '" target="_blank">' . $phone . '</a>';
        if (end($phoneno) != $phone) {
            $phonelinked .= '/';
        }
    }

    // Image
    $imglink = $siteRegulars->contact_upload;
    if (!empty($imglink)) {
        $img = IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload;
    } else {
        $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    }

    // Section HTML
    $rescont .= '

        <section class="contact-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="contact-info text-center">
                        <i class="far fa-map"></i>
                        <h3>Location</h3>
                        <div class="ct__atdetail">
                            <p>' . $siteRegulars->fiscal_address . '</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="contact-info text-center">
                        <i class="fas fa-phone-alt"></i>
                        <h3>Phone No.</h3>
                        <div class="ct__atdetail">
                            <p>' . $tellinked . '</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 text-center">
                    <div class="contact-info">
                        <i class="fas fa-envelope-square"></i>
                        <h3>E-mail</h3>
                        <div class="ct__atdetail">
                            <p>' . $emailinked . '</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6">
                    <div class="contact-form">
                        <form class="m-auto text-center">
                            <div class="row mb-4">
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="text" id="form6Example1" class="form-control" placeholder="Name" />
                                    </div>
                                </div>
                            </div>
        
                            <div class="form-outline mb-4">
                                <input type="email" id="form6Example5" class="form-control" placeholder="Email" />
                            </div>
        
                            <div class="form-outline mb-4">
                                <input type="number" id="form6Example6" class="form-control" placeholder="Phone No." />
                            </div>
        
                            <div class="form-outline mb-4">
                                <textarea class="form-control" id="form6Example7" placeholder="Message" rows="4"></textarea>
                            </div>
        
                            <button type="submit" class="btn">Send Message</button>
                        </form>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="contact-map">
                        <iframe src="' . $siteRegulars->location_map . '" width="900" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
';
    $map = '
                        <div class="ul-contact-map">
                        <iframe src="" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            
                        </div>
';

    $jVars['module:contact-us'] = $rescont;
    $jVars['module:contact-map'] = $map;



    //uc contact details
    $home_contact = '';
    $configRec = Config::find_by_id(1);
    $home_contact .= ' 

            <div class="whats_app">
                <a href="' . $configRec->whatsapp . '" data-original-href="' . $configRec->whatsapp . '" target="_blank" class="whatsapp" rel="noreferrer">
                    <img src="' . BASE_URL . 'template/web/assets/img/whatsapp.png" class="whatsapp_img" alt="whatsapp">
                </a>
            </div>
                ';

    $jVars['module:contact-home'] = $home_contact;
}
