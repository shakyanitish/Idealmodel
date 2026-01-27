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
    $tellinked .= '<a href="tel:+977' . str_replace(' ', '', $lastElement) . '" target="_blank">' . $lastElement . '</a><br>';
    foreach ($telno as $tel) {
        $tellinked .= '<a href="tel:+977' . str_replace(' ', '', $tel) . '" target="_blank">' . $tel . '</a>';
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

    // Email links
    // $emailinked = '';
    // $emails = explode(",", $siteRegulars->email_address . ',' . $siteRegulars->contact_info2); // merge both emails
    // $emails = array_map('trim', $emails); // remove spaces
    // $totalEmails = count($emails);
    // $countEmail = 0;
    // foreach ($emails as $email) {
    //     $countEmail++;
    //     $emailinked .= '<a href="mailto:' . $email . '" target="_blank" rel="noreferrer" title="' . $email . '">' . $email . '</a>';
    //     if ($countEmail < $totalEmails) {
    //         $emailinked .= ', '; // add comma only between emails
    //     }
    // }

$emailinked = '';
$emails = explode(",", $siteRegulars->email_address); // use only one field
$emails = array_map('trim', $emails); // remove spaces
$totalEmails = count($emails);
$countEmail = 0;

foreach ($emails as $email) {
    $countEmail++;
    $emailinked .= '<a href="mailto:' . $email . '" target="_blank" rel="noreferrer" title="' . $email . '">' . $email . '</a>';
    if ($countEmail < $totalEmails) {
        $emailinked .= ' '; // add comma only between emails
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

            <section id="section-main" class="no-bg no-top" aria-label="section-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="de-content-overlay">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <h3>Ma Hospitality</h3>
                                                <address>
                                                    <span><strong>Address:</strong> ' . $siteRegulars->fiscal_address . '</span>
                                                    <span><strong>Phone:</strong> ' . $tellinked . '</span>
                                                    <span><strong>Email:</strong> ' . $emailinked . '</span>
                                                </address>
                                            </div>
                                        </div>

                                        <div class="spacer-single"></div>

                                        <form name="contactform" id="contact_form" method="post">
                                            <div class="row">
                                                <div class="col-md-12 mb10">
                                                    <h3>Send Us Message</h3>
                                                </div>
                                                <div class="col-md-6">
                                                    <div id="name_error" class="error">Please enter your name.</div>
                                                    <div>
                                                        <input type="text" name="fullname" id="name" class="form-control" placeholder="Your Name" required>
                                                    </div>

                                                    <div id="email_error" class="error">Please enter your valid E-mail ID.</div>
                                                    <div>
                                                        <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
                                                    </div>

                                                    <div id="phone_error" class="error">Please enter your phone number.</div>
                                                    <div>
                                                        <input type="text" name="phone" id="phone" class="form-control" placeholder="Your Phone" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div id="message_error" class="error">Please enter your message.</div>
                                                    <div>
                                                        <textarea name="message" id="message" class="form-control" placeholder="Your Message" required></textarea>
                                                    </div>
                                                </div>

                                                    <div class="col-md-12 mt-2">
                                                        <div id="result_msg"></div>
                                                        <div class="g-recaptcha" data-sitekey="6LeeWC0sAAAAAGFgPZKMWCtZOcu__qKxmDyLKUUS"></div>
                                                        <p class="mt20">
                                                            <input type="submit" id="send_message" value="Send Message" class="btn btn-line">
                                                        </p>
                                                    </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="map-container map-fullwidth">
                                            <iframe src="' . $siteRegulars->location_map . '" width="600" height="450" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                   
                </div>
            </section>';



    $jVars['module:contact-us'] = $rescont;



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
