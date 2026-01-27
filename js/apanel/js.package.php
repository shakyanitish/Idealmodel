<script language="javascript">

    function getLocation() {
        return '<?php echo BASE_URL;?>includes/controllers/ajax.package.php';
    }

    function getTableId() {
        return 'table_dnd';
    }

    //Data Table initialization and setting the page and length values from local storage
$(document).ready(function () {
    // Function to get paging information
    $.fn.dataTableExt.oApi.fnPagingInfo = function (oSettings) {
        if (!oSettings || oSettings._iDisplayStart === undefined) {
            return null; // Prevent errors if DataTable is not fully loaded
        }
        return {
            "iStart": oSettings._iDisplayStart,
            "iEnd": oSettings.fnDisplayEnd(),
            "iLength": oSettings._iDisplayLength,
            "iTotal": oSettings.fnRecordsTotal(),
            "iFilteredTotal": oSettings.fnRecordsDisplay(),
            "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
            "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
        };
    };

    // Retrieve the stored page and length values from local storage
    var desiredPage = localStorage.getItem("packagedbpage") ? parseInt(localStorage.getItem("packagedbpage")) : 0;
    var desiredLength = localStorage.getItem("packagedblength") ? parseInt(localStorage.getItem("packagedblength")) : 10;

    console.log("Desired Page:", desiredPage);
    console.log("Desired Length:", desiredLength);

    // Initialize the DataTable
    var oTable = $('#example').dataTable({
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "aLengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        "iDisplayLength": desiredLength // Set the initial length
    }).rowReordering({
        sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.package.php?action=sort",
        fnSuccess: function (message) {
            var msg = jQuery.parseJSON(message);
            showMessage(msg.action, msg.message);
        }
    });

    // Store the current page in local storage when a pagination button is clicked
    $(document).on("click", ".fg-button", function () {
        var currentPage = oTable.fnPagingInfo().iPage;
        localStorage.setItem("packagedbpage", currentPage);
        console.log("Stored Page:", currentPage);
    });

    // Store the selected length in local storage when the length menu changes
    $(document).on('change', '#example_length select', function () {
        var selectedLength = $(this).val();
        localStorage.setItem("packagedblength", selectedLength);
        console.log("Stored Length:", selectedLength);

        // Handle the -1 (All) case
        if (selectedLength == -1) {
            // Disable pagination controls when "All" is selected
            $('.fg-button').prop('disabled', true);
        } else {
            // Enable pagination controls for other options
            $('.fg-button').prop('disabled', false);
        }
    });

    // Set the desired page after the table is initialized
    if (oTable.fnPagingInfo() != null) {
        // Only change the page if the length is not -1 (All)
        if (desiredLength != -1) {
            oTable.fnPageChange(desiredPage, true);
            console.log("Initialized on Page:", desiredPage);
        }
    }
});




//Data Table initialization and setting the page and length values from local storage
$(document).ready(function () {
    // Function to get paging information
    $.fn.dataTableExt.oApi.fnPagingInfo = function (oSettings) {
        if (!oSettings || oSettings._iDisplayStart === undefined) {
            return null; // Prevent errors if DataTable is not fully loaded
        }
        return {
            "iStart": oSettings._iDisplayStart,
            "iEnd": oSettings.fnDisplayEnd(),
            "iLength": oSettings._iDisplayLength,
            "iTotal": oSettings.fnRecordsTotal(),
            "iFilteredTotal": oSettings.fnRecordsDisplay(),
            "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
            "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
        };
    };

    // Retrieve the stored page and length values from local storage
    var desiredPage = localStorage.getItem("subpackagedbpage") ? parseInt(localStorage.getItem("subpackagedbpage")) : 0;
    var desiredLength = localStorage.getItem("subpackagedblength") ? parseInt(localStorage.getItem("subpackagedblength")) : 10;

    console.log("Desired Page:", desiredPage);
    console.log("Desired Length:", desiredLength);

    // Initialize the DataTable
    var oTable = $('#subexample').dataTable({
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "aLengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        "iDisplayLength": desiredLength // Set the initial length
    }).rowReordering({
        sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.package.php?action=subSort",
        fnSuccess: function (message) {
            var msg = jQuery.parseJSON(message);
            showMessage(msg.action, msg.message);
        }
    });

    // Store the current page in local storage when a pagination button is clicked
    $(document).on("click", ".fg-button", function () {
        var currentPage = oTable.fnPagingInfo().iPage;
        localStorage.setItem("subpackagedbpage", currentPage);
        console.log("Stored Page:", currentPage);
    });

    // Store the selected length in local storage when the length menu changes
    $(document).on('change', '#example_length select', function () {
        var selectedLength = $(this).val();
        localStorage.setItem("subpackagedblength", selectedLength);
        console.log("Stored Length:", selectedLength);

        // Handle the -1 (All) case
        if (selectedLength == -1) {
            // Disable pagination controls when "All" is selected
            $('.fg-button').prop('disabled', true);
        } else {
            // Enable pagination controls for other options
            $('.fg-button').prop('disabled', false);
        }
    });

    // Set the desired page after the table is initialized
    if (oTable.fnPagingInfo() != null) {
        // Only change the page if the length is not -1 (All)
        if (desiredLength != -1) {
            oTable.fnPageChange(desiredPage, true);
            console.log("Initialized on Page:", desiredPage);
        }
    }
});
$(document).ready(function () {
    // Function to get paging information
    $.fn.dataTableExt.oApi.fnPagingInfo = function (oSettings) {
        if (!oSettings || oSettings._iDisplayStart === undefined) {
            return null; // Prevent errors if DataTable is not fully loaded
        }
        return {
            "iStart": oSettings._iDisplayStart,
            "iEnd": oSettings.fnDisplayEnd(),
            "iLength": oSettings._iDisplayLength,
            "iTotal": oSettings.fnRecordsTotal(),
            "iFilteredTotal": oSettings.fnRecordsDisplay(),
            "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
            "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
        };
    };

    // Retrieve the stored page and length values from local storage
    var desiredPage = localStorage.getItem("itinerarydbpage") ? parseInt(localStorage.getItem("itinerarydbpage")) : 0;
    var desiredLength = localStorage.getItem("itinerarydblength") ? parseInt(localStorage.getItem("itinerarydblength")) : 10;

    console.log("Desired Page:", desiredPage);
    console.log("Desired Length:", desiredLength);

    // Initialize the DataTable
    var oTable = $('#subexample1').dataTable({
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "aLengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        "iDisplayLength": desiredLength // Set the initial length
    }).rowReordering({
        sURL: "<?php echo BASE_URL;?>includes/controllers/ajax.package.php?action=subiSort",
        fnSuccess: function (message) {
            var msg = jQuery.parseJSON(message);
            showMessage(msg.action, msg.message);
        }
    });

    // Store the current page in local storage when a pagination button is clicked
    $(document).on("click", ".fg-button", function () {
        var currentPage = oTable.fnPagingInfo().iPage;
        localStorage.setItem("itinerarydbpage", currentPage);
        console.log("Stored Page:", currentPage);
    });

    // Store the selected length in local storage when the length menu changes
    $(document).on('change', '#example_length select', function () {
        var selectedLength = $(this).val();
        localStorage.setItem("itinerarydblength", selectedLength);
        console.log("Stored Length:", selectedLength);

        // Handle the -1 (All) case
        if (selectedLength == -1) {
            // Disable pagination controls when "All" is selected
            $('.fg-button').prop('disabled', true);
        } else {
            // Enable pagination controls for other options
            $('.fg-button').prop('disabled', false);
        }
    });

    // Set the desired page after the table is initialized
    if (oTable.fnPagingInfo() != null) {
        // Only change the page if the length is not -1 (All)
        if (desiredLength != -1) {
            oTable.fnPageChange(desiredPage, true);
            console.log("Initialized on Page:", desiredPage);
        }
    }
});

    $(document).ready(function () {
        $('.btn-submit').on('click', function () {
            var actVal = $(this).attr('btn-action');
            $('#idValue').attr('myaction', actVal);
        })
        // form submisstion actions
        jQuery('#package_frm').validationEngine({
            autoHidePrompt: true,
            promptPosition: "bottomLeft",
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=add&" : "action=edit&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();
                    var data = $('#package_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    $('.my-msg').html('');
                                }, 3000);
                                $('.btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/list";
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/addEdit";
                                    }, 3000);
                                if (actionId == '0')
                                    setTimeout(function () {
                                        window.location.href = "";
                                    }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })
        /***************************************** View Sub Package Lists *******************************************/
        jQuery('#subpackage_frm').validationEngine({
            prettySelect: true,
            autoHidePrompt: true,
            useSuffix: "_chosen",
            promptPosition: "bottomLeft",
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    var Re = $("#type").val();
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=addSubpackage&" : "action=editSubpackage&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();

                    var data = $('#subpackage_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('.btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/subpackagelist/" + Re;
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/addEditsubpackage/" + Re;
                                    }, 3000);
                                if (actionId == 0)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/subpackagelist/" + Re;
                                    }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })
        jQuery('#subgallery_frm').validationEngine({
            autoHidePrompt: true,
            scroll: false,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    $('#btn-submit').attr('disabled', 'true');
                    var action = "action=addSubPackageImage&";
                    var data = $('#subgallery_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('#btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        })

    });


    //save buttons....................

    
    
    /*************************** Shorting Sub Image Gallery Postion *******************************/
    $(document).ready(function () {
        $(function () {
            $(".subImagegallery-sort").sortable({
                //connectWith: ".video-sort",
                start: function (event, ui) {
                    var start_pos = ui.item.index();
                    ui.item.data('start_pos', start_pos);
                },
                update: function (event, ui) {
                    var mySel = "";
                    $('div.oldsort').each(function (i) {
                        mySel = mySel + ';' + $(this).attr('csort');
                    });
                    //var start_pos = ui.item.data('start_pos');
                    var id = ui.item.context.id;
                    var end_pos = ui.item.index();
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: "action=sortSubGalley&id=" + id + "&toPosition=" + end_pos + "&sortIds=" + mySel,
                        success: function (data) {
                            var msg = eval(data);
                            showMessage(msg.action, msg.message);
                        }
                    });
                }
            });
        });
    });


$(document).ready(function () {
   jQuery('#itinerary_frm').validationEngine({
            prettySelect: true,
            autoHidePrompt: true,
            useSuffix: "_chosen",
            promptPosition: "bottomLeft",
            scroll: true,
            onValidationComplete: function (form, status) {
                if (status == true) {
                    var Re = $("#package_id").val();
                    $('.btn-submit').attr('disabled', 'true');
                    var action = ($('#idValue').val() == 0) ? "action=additinerary&" : "action=edititinerary&";
                    for (instance in CKEDITOR.instances)
                        CKEDITOR.instances[instance].updateElement();

                    var data = $('#itinerary_frm').serialize();
                    queryString = action + data;
                    $.ajax({
                        type: "POST",
                        dataType: "JSON",
                        url: getLocation(),
                        data: queryString,
                        success: function (data) {
                            var msg = eval(data);
                            if (msg.action == 'warning') {
                                showMessage(msg.action, msg.message);
                                $('.btn-submit').removeAttr('disabled');
                                $('.formButtons').show();
                                return false
                            }
                            if (msg.action == 'success') {
                                showMessage(msg.action, msg.message);
                                var actionId = $('#idValue').attr('myaction');
                                if (actionId == 2)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/itinerarylist/" + Re;
                                    }, 3000);
                                if (actionId == 1)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/addEdititinerary/" + Re;
                                    }, 3000);
                                if (actionId == 0)
                                    setTimeout(function () {
                                        window.location.href = "<?php echo ADMIN_URL?>package/itinerarylist/" + Re;
                                    }, 3000);
                            }
                            if (msg.action == 'notice') {
                                showMessage(msg.action, msg.message);
                                setTimeout(function () {
                                    window.location.href = window.location.href;
                                }, 3000);
                            }
                            if (msg.action == 'error') {
                                showMessage(msg.action, msg.message);
                                $('#buttonsP img').remove();
                                $('.formButtons').show();
                                return false;
                            }
                        }
                    });
                    return false;
                }
            }
        });
        });


    /***************************************** Add New Row *******************************************/
    function addRowss() {
        var rowNum = Math.floor((Math.random() * 999) + 1);
        var newRow = '<div class="form-row my-style" id="NewRow' + rowNum + '">';
        newRow += '<div class="form-label col-md-2"></div>';
        newRow += '<div class="form-input col-md-12">';
        newRow += '<div class="col-md-4">';
        newRow += '<input placeholder="Facility Title" type="text" name="facilityOption[]" id="facilityOption" class="validate[required]">';
        newRow += '</div>';
        newRow += '<div>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addRowss(this);">';
        newRow += '<i class="glyph-icon icon-plus-square"></i>';
        newRow += '</a>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow(' + rowNum + ');">';
        newRow += '<i class="glyph-icon icon-minus-square"></i>';
        newRow += '</a>';
        newRow += '</div>';
        newRow += '</div>';
        newRow += '</div>';

        $('#option-field').append(newRow);
    }

    /***************************************** Delete Add Row *******************************************/
    function deletenewRow(rnum) {
        /*var x = confirm("Are you sure you want to delete?");
        if (x){*/
        $('#NewRow' + rnum).remove();
        /*}else{
        return false;
       }*/
    }

    // Edit records
    function editRecord(Re) {
        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: 'action=editExistsRecord&id=' + Re,
            success: function (data) {
                var msg = eval(data);
                $("#title").val(msg.title);
                $("#idValue").val(msg.editId);
            }
        });
    }

    // Deleting Record
    function recordDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Package")?>');
        $('.pText').html('Click on yes button to delete this package permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=delete&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }


    




      function subreDelete (Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Package")?>');
        $('.pText').html('Click on yes button to delete this package permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deleteitinerary&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    $(function () {
        /*************************************** USer Image Status Toggler ******************************************/
        $('.imageStatusToggle').on('click', function () {
            var Re = $(this).attr('rowId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=SubitoggleStatus&id=" + Re,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#toggleImg' + Re).removeClass("icon-check-circle-o");
                $('#toggleImg' + Re).addClass("icon-clock-os-circle-o");
            } else {
                $('#toggleImg' + Re).removeClass("icon-clock-os-circle-o");
                $('#toggleImg' + Re).addClass("icon-check-circle-o");
            }
        });
    });
   /*************************************** Status Sub Toggler ******************************************/
        $('.statusItinerary').on('click', function () {
            var id = $(this).attr('moduleId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=SubitoggleStatus&id=" + id,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#imgHolder_' + id).removeClass("bg-green");
                $('#imgHolder_' + id).addClass("bg-red");
                $(this).attr("data-original-title", "Click to Publish");
            } else {
                $('#imgHolder_' + id).removeClass("bg-red");
                $('#imgHolder_' + id).addClass("bg-green");
                $(this).attr("data-original-title", "Click to Un-publish");
            }
        });

    // Deleting Record
    function subrecordDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Package")?>');
        $('.pText').html('Click on yes button to delete this package permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deletesubpackage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }



    /***************************************** Link Type Choose *******************************************/
    function linkTypeSelect(Re){
        if(Re == 0) {		
            $('#linkPage_chosen').removeClass("hide");
            ($('#linksrc').val() == 'http://www.') ? $('#linksrc').val('') : null ;
        } else {
            $('#linkPage_chosen').addClass("hide");
            ($('#linksrc').val() == '') ? $('#linksrc').val("http://www.") : null ;
        }
    }
    $(document).ready(function(){	
        $('#linkPage').change(function(){
            $('#linksrc').val($(this).val());
        });
    });


    /*************************************** Toggle Meta tags**/
    function toggleMetadata() {
        $(".metadata").slideToggle("slow", function () {
        });
    }

    /***************************************** View Package Lists *******************************************/
    function viewPackagelist() {
        window.location.href = "<?php echo ADMIN_URL?>package/list";
    }

    /***************************************** Add New Package *******************************************/
    function AddNewPackage() {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdit";
    }

    /***************************************** Edit records *****************************************/
    function editRecord(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdit/" + Re;
    }


    /***************************************** View Subpackage Lists *******************************************/
    function viewSubpackagelist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/subpackagelist/" + Re;
    }

    /***************************************** Add New Subpackage *******************************************/
    function AddNewSubpackage(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEditsubpackage/" + Re;
    }

    /***************************************** Edit Subpackage records *****************************************/
    function editsubpackage(Pid, Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEditsubpackage/" + Pid + "/" + Re;
    }

    /******************************** Remove temp upload image ********************************/
    function deleteTempimage(Re) {
        $('#previewRoomsimage' + Re).fadeOut(1000, function () {
            $('#previewRoomsimage' + Re).remove();
        });
    }

    function deleteTempflag(Re) {
        $('#previewflag' + Re).fadeOut(1000, function () {
            $('#previewflag' + Re).remove();
        });
    }

    /******************************** Remove temp upload video ********************************/
    function deleteTempVideo(Re)
    {
        $('#previewVideo'+Re).fadeOut(1000,function(){
            $('#previewVideo'+Re).remove();
        });
    }

    function viewsubimagelist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/subpackageImageList/" + Re;
    }

    function viewSubImageslist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package&mode=subpackageImageList/" + Re;
    }
 function editItinerary(Pid, Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdititinerary/" + Pid + "/" + Re;
    }

    function AddNewItinerary(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdititinerary/" + Re;
    }

    function viewItinerarylist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/itinerarylist/" + Re;
    }

    $(function () {
        /*************************************** USer Image Status Toggler ******************************************/
        $('.imageStatusToggle').on('click', function () {
            var Re = $(this).attr('rowId');
            var status = $(this).attr('status');
            newStatus = (status == 1) ? 0 : 1;
            $.ajax({
                type: "POST",
                url: getLocation(),
                data: "action=SubitoggleStatus&id=" + Re,
                success: function (msg) {
                }
            });
            $(this).attr({'status': newStatus});
            if (status == 1) {
                $('#toggleImg' + Re).removeClass("icon-check-circle-o");
                $('#toggleImg' + Re).addClass("icon-clock-os-circle-o");
            } else {
                $('#toggleImg' + Re).removeClass("icon-clock-os-circle-o");
                $('#toggleImg' + Re).addClass("icon-check-circle-o");
            }
        });
    });


    // Deleting Record
    function subrecordDelete(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "Package")?>');
        $('.pText').html('Click on yes button to delete this package permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deletesubpackage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        showMessage(msg.action, msg.message);
                        $('#' + Re).remove();
                        reStructureList(getTableId());
                    }
                });
            } else {
                Re = null;
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /*************************************** Toggle Meta tags**/
    function toggleMetadata() {
        $(".metadata").slideToggle("slow", function () {
        });
    }

    /***************************************** View Package Lists *******************************************/
    function viewPackagelist() {
        window.location.href = "<?php echo ADMIN_URL?>package/list";
    }

    /***************************************** Add New Package *******************************************/
    function AddNewPackage() {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdit";
    }

    /***************************************** Edit records *****************************************/
    function editRecord(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEdit/" + Re;
    }


    /***************************************** View Subpackage Lists *******************************************/
    function viewSubpackagelist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/subpackagelist/" + Re;
    }

    /***************************************** Add New Subpackage *******************************************/
    function AddNewSubpackage(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEditsubpackage/" + Re;
    }

    /***************************************** Edit Subpackage records *****************************************/
    function editsubpackage(Pid, Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/addEditsubpackage/" + Pid + "/" + Re;
    }

    /******************************** Remove temp upload image ********************************/
    function deleteTempimage(Re) {
        $('#previewRoomsimage' + Re).fadeOut(1000, function () {
            $('#previewRoomsimage' + Re).remove();
        });
    }

    /******************************** Remove temp upload video ********************************/
    function deleteTempVideo(Re)
    {
        $('#previewVideo'+Re).fadeOut(1000,function(){
            $('#previewVideo'+Re).remove();
        });
    }

    function viewsubimagelist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package/subpackageImageList/" + Re;
    }

    function viewSubImageslist(Re) {
        window.location.href = "<?php echo ADMIN_URL?>package&mode=subpackageImageList/" + Re;
    }

    /******************************** Remove User saved Sub Package images ********************************/
    function deleteSavedimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deleteSubimage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        if (msg.action == 'success') {
                            $('.removeSavedimg' + Re).fadeOut(1000, function () {
                                $('.removeSavedimg' + Re).remove();
                            });
                        }
                    }
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    
    function deleteSavedCompanyDoc(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "pdf")?>');
        $('.pText').html('Click on yes button to delete this pdf permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('.removeSavedCompanyDoc' + Re).fadeOut(1000, function () {
                    $('.removeSavedCompanyDoc' + Re).remove();
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }



        /******************************** Remove User saved Sub Package images ********************************/
    function deleteSavedimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $.ajax({
                    type: "POST",
                    dataType: "JSON",
                    url: getLocation(),
                    data: 'action=deleteSubimage&id=' + Re,
                    success: function (data) {
                        var msg = eval(data);
                        if (msg.action == 'success') {
                            $('.removeSavedimg' + Re).fadeOut(1000, function () {
                                $('.removeSavedimg' + Re).remove();
                            });
                        }
                    }
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    function deleteSavedCompanyDoc(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "pdf")?>');
        $('.pText').html('Click on yes button to delete this pdf permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('.removeSavedCompanyDoc' + Re).fadeOut(1000, function () {
                    $('.removeSavedCompanyDoc' + Re).remove();
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }
    /******************************** Remove User saved Package images ********************************/
    function deleteSavedPackageimage(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedimg' + Re).fadeOut(1000, function () {
                    $('#removeSavedimg' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }




        function deleteSavedPackageflag(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "image")?>');
        $('.pText').html('Click on yes button to delete this image permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedflag' + Re).fadeOut(1000, function () {
                    $('#removeSavedflag' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }



    function deleteSavedPackageVideo(Re) {
        $('.MsgTitle').html('<?php echo sprintf($GLOBALS['basic']['deleteRecord_'], "video")?>');
        $('.pText').html('Click on yes button to delete this video permanently.!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedVid' + Re).fadeOut(1000, function () {
                    $('#removeSavedVid' + Re).remove();
                    $('.uploader' + Re).fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    /***************************************** Add New Row *******************************************/
    function addnewRow() {
        var rowNum = Math.floor((Math.random() * 999) + 1);
        var newRow = '<div class="form-row my-style" id="NewRow' + rowNum + '">';
        newRow += '<div class="form-label col-md-2"></div>';
        newRow += '<div class="form-input col-md-12">';
        newRow += '<div class="col-md-4">';
        newRow += '<input placeholder="Facility Name" type="text" name="facility[]" id="facility" class="validate[length[0,50]]">';
        newRow += '</div>';
        newRow += '<div>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRow(this);">';
        newRow += '<i class="glyph-icon icon-plus-square"></i>';
        newRow += '</a>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow(' + rowNum + ');">';
        newRow += '<i class="glyph-icon icon-minus-square"></i>';
        newRow += '</a>';
        newRow += '</div>';
        newRow += '</div>';
        newRow += '</div>';

        $('#option-field').append(newRow);
    }

    /********* On change max no of guest ***********/
    $(document).ready(function () {

        $('.maxppl').on('change', function () {
            var selVal = $(this).val();
            if (selVal == 1) {
                $('.rmovprice1').removeClass('hide');
                $('.rmovprice2').addClass('hide');
                $('.rmovprice3').addClass('hide');
            }
            if (selVal == 2) {
                $('.rmovprice1').removeClass('hide');
                $('.rmovprice2').removeClass('hide');
                $('.rmovprice3').addClass('hide');
            }
            if (selVal == 3) {
                $('.rmovprice1').removeClass('hide');
                $('.rmovprice2').removeClass('hide');
                $('.rmovprice3').removeClass('hide');
            }
        });
        $('.maxppl').trigger('change');

        $(".character-details").keyup(function () {
            var a = 125, b = $(this).val().length;
            if (b >= a) $(".description-remaining").text(" you have reached the limit");
            else {
                var c = a - b;
                $(".description-remaining").text(c + " characters left")
            }
        });
    })

    /***************************************** Delete Add Row *******************************************/
    function deletenewRow(rnum) {
        /*var x = confirm("Are you sure you want to delete?");
        if (x){*/
        $('#NewRow' + rnum).remove();
        /*}else{
        return false;
       }*/
    }

    /***************************************** Add New Row *******************************************/
    function addnewRow2() {
        var rowNum = Math.floor((Math.random() * 999) + 1);
        var newRow = '<div class="form-row my-style" id="NewRowserv' + rowNum + '">';
        newRow += '<div class="form-label col-md-2"></div>';
        newRow += '<div class="form-input col-md-12">';
        newRow += '<div class="col-md-4">';
        newRow += '<input placeholder="Service Name" type="text" name="service[]" id="service" class="validate[length[0,50]]">';
        newRow += '</div>';
        newRow += '<div>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-blue tooltip-button" data-placement="right" title="Add" onclick="addnewRow2(this);">';
        newRow += '<i class="glyph-icon icon-plus-square"></i>';
        newRow += '</a>';
        newRow += '<a href="javascript:void(0);" class="btn medium bg-red tooltip-button" data-placement="right" title="Delete" onclick="deletenewRow2(' + rowNum + ');">';
        newRow += '<i class="glyph-icon icon-minus-square"></i>';
        newRow += '</a>';
        newRow += '</div>';
        newRow += '</div>';
        newRow += '</div>';

        $('#option-field2').append(newRow);
    }

    /***************************************** Delete Add Row *******************************************/
    function deletenewRow2(rnum) {
        /*var x = confirm("Are you sure you want to delete?");
        if (x){*/
        $('#NewRowserv' + rnum).remove();
        /*}else{
        return false;
       }*/
    }

    function deleteImgheader(Re) {
        $('.MsgTitle').html('Do you want to delete the record ?');
        $('.pText').html('Clicking yes will be delete this record permanently. !!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedimg' + Re).fadeOut(1000, function () {
                    $('#removeSavedimg' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }




        function deleteImgheader(Re) {
        $('.MsgTitle').html('Do you want to delete the record ?');
        $('.pText').html('Clicking yes will be delete this record permanently. !!!');
        $('.divMessageBox').fadeIn();
        $('.MessageBoxContainer').fadeIn(1000);

        $(".botTempo").on("click", function () {
            var popAct = $(this).attr("id");
            if (popAct == 'yes') {
                $('#removeSavedflag' + Re).fadeOut(1000, function () {
                    $('#removeSavedflag' + Re).remove();
                    $('.uploader').fadeIn(500);
                });
            } else {
                Re = '';
            }
            $('.divMessageBox').fadeOut();
            $('.MessageBoxContainer').fadeOut(1000);
        });
    }

    // New slug
    $(document).on('blur', 'input[name="title"], input[name="slug"]', function () {
        var title = $(this).val();
        var actid = $('#idValue').val();
        $.ajax({
            url: getLocation(),
            type: 'POST',
            dataType: 'json',
            data: {'action': 'slug', 'title': title, 'actid': actid},
        })
            .done(function (data) {
                var msg = eval(data);
                $('input[name="slug"]').val(msg.result);
                $('span#error').html(msg.msgs);
            });
        return false;
    });

    function editImageTitle(Re) {
        var clicked = $('.clicked' + Re);
        $(clicked).html("");
        $('<input/>').attr({
            type: 'text',
            id: 'ne-title',
            name: 'ne-title',
            class: 'validate[required,length[0,250]] col-md-9',
            'imgId': Re
        }).appendTo($(clicked)).focus();
        $(clicked).append(' <button type="submit" id="ne-submit" class="col-md-3">Save</button>');

        $('.up-title').on("click", "#ne-submit", function (e) {
            var data = $("#ne-title");
            var id = $(data).attr("imgId");
            var title = $(data).val();
            $.ajax({
                type: "POST",
                dataType: "JSON",
                url: getLocation(),
                data: 'action=editSubGalleryImageText&id=' + id + '&title=' + title,
                success: function (data) {
                    var msg = eval(data);
                    if (msg.action == 'success') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                    if (msg.action == 'error') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                    if (msg.action == 'notice') {
                        showMessage(msg.action, msg.message);
                        setTimeout(function () {
                            window.location.href = window.location.href;
                        }, 3000);
                    }
                }
            });
        });
    }


//=========================

//eeeeeeeeeeeeeeeeeeeeeeeee



    function subdeleteSelectedRecords(idArray) {
        if (!idArray) return;

        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: { action: 'subibulkDelete', idArray: idArray },
            success: function (data) {
                if (data.action === 'success') {
                    showMessage('success', data.message);
                    var ids = idArray.split("|");
                    for (var i = 1; i < ids.length; i++) { // start from 1
                        $('#' + ids[i]).remove();
                    }
                    reStructureList(getTableId());
                } else {
                    showMessage('error', data.message);
                }
            },
            error: function (err) {
                console.error("AJAX error:", err);
                showMessage('error', 'AJAX request failed.');
            }
        });
    }

    function toggleItineraryStatus(idArray) {
        if (!idArray) return;

        // Show loading icon for selected rows
        $('.bulkCheckbox:checked').each(function () {
            // $('#imgHolder_' + $(this).attr('bulkId')).html('<img src="../images/apanel/loadwheel.gif" />');
        });
        

        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: getLocation(),
            data: "action=subibulkToggleStatus&idArray=" + idArray,
            success: function (msg) {
                var myMessage = idArray.split("|");
                var counter = myMessage.length; 
                for (i = 1; i < counter; i++) {
                    var status = $('#imgHolder_' + myMessage[i]).attr('status');
                    newStatus = (status == 1) ? 0 : 1;
                    $('#imgHolder_' + myMessage[i]).attr({'status': newStatus});
                    if (status == 1) {
                        $('#imgHolder_' + myMessage[i]).removeClass("bg-green");
                        $('#imgHolder_' + myMessage[i]).addClass("bg-red");
                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Publish");
                    } else {
                        $('#imgHolder_' + myMessage[i]).removeClass("bg-red");
                        $('#imgHolder_' + myMessage[i]).addClass("bg-green");
                        $('#imgHolder_' + myMessage[i]).attr("data-original-title", "Click to Un-publish");
                    }
                }
                showMessage('success', 'Status has been toggled.');
            },
            error: function (err) {
                console.error("AJAX error:", err);
                showMessage('error', 'AJAX request failed.');
            }
        });
    }

    $(document).ready(function () {
        $('#applySelected_btn1').on("click", function () {
            var action = $('#groupTaskField1').val();
            if (action == '0') { showMessage('warning', 'Please select an action!!'); return; }

            var idArray = '0';
            $('.bulkCheckbox:checked').each(function () { idArray += "|" + $(this).attr('bulkId'); });
            if (idArray == '0') { showMessage('warning', 'Please select at least one record.'); return; }

            switch (action) {
                case "subitoggleStatus":
                    toggleItineraryStatus(idArray);
                    break;

                case "subidelete":
                    $('.MsgTitle').html('Do you want to delete the selected rows?');
                    $('.pText').html('Click on yes button to delete these rows permanently!');
                    $('.divMessageBox').fadeIn();
                    $('.MessageBoxContainer').fadeIn(1000);

                    $(".botTempo").off("click").on("click", function () {
                        if ($(this).attr("id") === 'yes') {
                            subdeleteSelectedRecords(idArray);
                        }
                        $('.divMessageBox').fadeOut();
                        $('.MessageBoxContainer').fadeOut(1000);
                    });
                    break;

                default:
                    showMessage('warning', 'Action not supported.');
                    break;
            }

            reStructureList(getTableId());
        });
    });


    $(document).ready(function () {
        // ... (your existing bulk code starts here) ...
        $('#applySelected_btn1').on("click", function () {
            // ... (rest of existing bulk code) ...
        });
        
        // ********************* NEW SINGLE STATUS TOGGLER *********************
        $('.statusItinerary').on('click', function () {
            var $link = $(this); // Reference to the clicked flag element
            var id = $link.attr('moduleId');
            var status = $link.attr('status');
            var newStatus = (status == 1) ? 0 : 1;
            
            $link.css('pointer-events', 'none'); 

            $.ajax({
                type: "POST",
                dataType: "JSON",
                url: getLocation(), 
                data: "action=subisingleToggleStatus&id=" + id, //id
                
                success: function (msg) {
                    // Check for server success before updating UI
                    if (msg.action === 'success') {
                        // --- UI UPDATE LOGIC (COPIED FROM YOUR BULK FUNCTION) ---
                        $link.attr({'status': newStatus});
                        
                        if (status == 1) {
                            $link.removeClass("bg-green").addClass("bg-red");
                            $link.attr("data-original-title", "Click to Publish");
                        } else {
                            $link.removeClass("bg-red").addClass("bg-green");
                            $link.attr("data-original-title", "Click to Un-publish");
                        }
                    } else {
                        showMessage('error', 'Server failed to update status.');
                    }
                },
                
                error: function (err) {
                    console.error("AJAX error:", err);
                    showMessage('error', 'AJAX request failed.');
                },
                
                complete: function() {
                    $link.css('pointer-events', 'auto'); 
                }
            });
        });
        // *******************************************************************
    });

function exploreLinkTypeSelect(Re){
    if(Re == 0) {        
        $('#exploreLinkPage_chosen').removeClass("hide").show();
        if($('#explorelinksrc').val() == 'https://www.') $('#explorelinksrc').val('');
    } else {
        $('#exploreLinkPage_chosen').addClass("hide").hide();
        if($('#explorelinksrc').val() == '') $('#explorelinksrc').val('https://www.');
    }
}

$(document).ready(function(){    
    // Trigger correct state on page load
    var initialType = <?php echo !empty($advInfo->explorelinktype) ? $advInfo->explorelinktype : 0; ?>;
    exploreLinkTypeSelect(initialType);

    // Update input when select changes
    $('#exploreLinkPage').change(function(){
        $('#explorelinksrc').val($(this).val());
    });
});





    </script>