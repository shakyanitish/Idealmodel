<?php

$faq_details = '';

if (defined('FAQ_PAGE')) {
    $faqs = Faq::find_all();




    if (!empty($faqs)) {



        foreach ($faqs as $i => $faq) {

            // dynamic IDs
            $headingId = "heading" . $i;
            $collapseId = "collapse" . $i;

            // status control (same logic as your reference)
            $collapsed = ($i == 0) ? 'show' : ''; // open body
            $expanded = ($i == 0) ? 'true' : 'false'; // aria-expanded
            $btnClass = ($i == 0) ? '' : 'collapsed'; // button collapse class

            $faq_details .= '
                <div class="accordion-item">
                    <h2 class="accordion-header" id="' . $headingId . '">
                        <button class="accordion-button ' . $btnClass . '" type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#' . $collapseId . '"
                            aria-expanded="' . $expanded . '"
                            aria-controls="' . $collapseId . '">
                            <span><i class="far fa-square-check"></i></span> ' . $faq->title . '
                        </button>
                    </h2>

                    <div id="' . $collapseId . '" class="accordion-collapse collapse ' . $collapsed . '"
                        aria-labelledby="' . $headingId . '"
                        data-bs-parent="#accordionExample">

                        <div class="accordion-body">
                            ' . $faq->content . '
                        </div>

                    </div>
                </div>
            ';
        }
    }
}



$jVars['module:faq:details'] = $faq_details;


$faq_details = '';

if (defined('HOME_PAGE')) {

    $faqs = Faq::find_few(3);

    if (!empty($faqs)) {
        $faq_details .= '';

        foreach ($faqs as $i => $faq) {
            $collapsed = ($i == 0) ? 'mad-panels-active' : '';
            $show = ($i == 0) ? 'show' : '';
            $faq_details .= '
            <dt class="mad-panels-title ' . $collapsed . '">
                <button id="' . $faq->id . '-button" type="button" aria-expanded="false" aria-controls="' . $faq->id . '" aria-disabled="false">
                ' . $faq->title . '
                </button>
            </dt>
            <dd id="' . $faq->id . '" class="mad-panels-definition">
                <p> ' . $faq->content . '</p>
            </dd>

                
                ';
        }

        $faq_details .= '';
    }
    else {
        $faq_details .= '<h3 class="text-center p-4">No FAQ Found</h3>';
    }
}

$jVars['module:faq:details-homepage'] = $faq_details;

$jVars['module:faqlink'] = BASE_URL . 'faq';


/**
 * Career / Vacancy page
 **/
$career_list = '';
if (defined('CAREER_PAGE')) {
    $vacancies = Faq::find_all();
    if (!empty($vacancies)) {
        foreach ($vacancies as $i => $vacancy) {
            $collapseId = "collapseThree" . ($i + 1);
            $headingId = "headingThree" . ($i + 1);
            $show = ($i == 0) ? 'show' : '';
            $collapsed = ($i == 0) ? '' : 'collapsed';
            $expanded = ($i == 0) ? 'true' : 'false';

            $career_list .= '





            <!-- Accordion card -->
            <div class="card">
                <!-- Card header -->
                <div class="card-header" role="tab" id="' . $headingId . '">
                    <a class="' . $collapsed . '" data-toggle="collapse" data-parent="#accordionEx1" href="#' . $collapseId . '" aria-expanded="' . $expanded . '" aria-controls="' . $collapseId . '">
                        <h5 class="mb-0">' . $vacancy->title . ' <i class="fas fa-plus"></i></h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="' . $collapseId . '" class="collapse ' . $show . '" role="tabpanel" aria-labelledby="' . $headingId . '" data-parent="#accordionEx1">
                    <div class="card-body call-action ">
                        <div class="call-wrap">
                            <div class="call-main">
                                ' . $vacancy->content . '
                            </div>
                            <div class="call-btn">
                                <div class="btn" data-toggle="modal" data-target="#exampleModal" data-title="' . htmlspecialchars($vacancy->title, ENT_QUOTES) . '">Apply</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Accordion card -->';
        }
    }
}
$jVars['module:career:list'] = $career_list;
?>