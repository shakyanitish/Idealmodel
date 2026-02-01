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




    <footer class="ul-footer">
        <div class="ul-footer-middle">
            <div class="ul-footer-container">
                <div class="ul-footer-middle-wrapper wow animate__fadeInUp">
                    <div class="ul-footer-widget ul-nwsltr-widget">
                        <h3 class="ul-footer-widget-title">Jayanti Memorial Trust</h3>
                        <div class="ul-footer-widget-links ul-footer-contact-links">
                            <span class="no-icon"><i class="flaticon-pin"></i> &nbsp;' . $siteRegulars->fiscal_address . '</span>
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
    </div>



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Become a Volunteer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="#" id="volunteerform" class="ul-contact-form ul-form">
                        <div class="row row-cols-2 row-cols-xxs-1 ul-bs-row">
                            <div class="col">
                                <div class="form-group">
                                    <input type="text" name="fullname" id="ul-blog-comment-name" placeholder="Full Name*">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <input type="email" name="email" id="ul-blog-comment-email"
                                        placeholder="Email Address*">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <input type="text" name="address" id="ul-blog-comment-address"
                                        placeholder="Address*">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <input type="tel" name="phone" placeholder="Phone No.*" oninput="this.value = this.value.replace(/[^0-9]/g, \'\');">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <textarea name="message" id="ul-blog-comment-msg"
                                        placeholder="Type your message"></textarea>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="g-recaptcha"
                                    data-sitekey="6LdR7FosAAAAAGAY8PgHauGE2s75kSmG8GsFQfWb"></div>
                            </div>

                            
                            <div class="col-12">
                                <button class="ul-btn"><i class="flaticon-fast-forward-double-right-arrows-symbol"></i>
                                    Get in Touch</button>
                            </div>
                            <div class="col-12">
                                <div id="volunteer_result_msg" style="display:none; padding: 15px; border-radius: 8px; background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; font-weight: 500; text-align: center; margin-top: 10px;"></div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/jquery.validate.min.js" integrity="sha512-KFHXdr2oObHKI9w4Hv1XPKc898mE4kgYx58oqsc/JqqdLMDI4YjOLzom+EMlW8HFUd0QfjfAvxSL6sEq/a42fQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#volunteerform").validate({
                errorElement: "span",
                errorClass: "validate-has-error",
                errorPlacement: function (error, element) {
                    if (element.closest(".input-group").length) {
                        error.insertAfter(element.closest(".input-group"));
                    } else {
                        error.insertAfter(element);
                    }
                },
                rules: {
                    fullname: { required: true },
                    phone: { required: true, number: true },
                    address: { required: true },
                    email: { required: true, email: true }
                },
                messages: {
                    fullname: { required: "Please enter your Full Name." },
                    phone: { required: "Please enter your Phone Number." },
                    address: { required: "Please enter your Address." },
                    email: { required: "Please enter your Email Address." }
                },
                submitHandler: function (form) {
                    var recaptcha = $(form).find("textarea[name=g-recaptcha-response]").val();
                    if (!recaptcha || recaptcha === "") {
                        event.preventDefault();
                        alert("Please check the recaptcha");
                        return false;
                    }

                    const formData = new FormData(form);
                    formData.append("action", "forContact");

                    $(form).find("button").attr("disabled", true).text("Processing...");

                    $.ajax({
                        type: "POST",
                        url: "enquery_mail.php",
                        data: formData,
                        dataType: "json",
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            $(form).find("button").removeAttr("disabled").html("<i class=flaticon-fast-forward-double-right-arrows-symbol></i> Get in Touch");
                            $("div#volunteer_result_msg").html(data.message).css("display", "block").fadeOut(8000);
                            form.reset();
                            // Reset the volunteer recaptcha specifically (index 1 if contact form recaptcha exists, otherwise 0)
                            var widgetIndex = $(".g-recaptcha").length > 1 ? 1 : 0;
                            grecaptcha.reset(widgetIndex);
                        }
                    });

                    return false;
                }
            });
        });
    </script> ';



$jVars['module:footer'] = $footer;
