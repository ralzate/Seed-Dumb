// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require switchery

//= require turbolinks
//= require_tree .





  $(function () {
        $(".chkPassport").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport").show();
            } else {
                $("#dvPassport").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport2").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport2").show();
            } else {
                $("#dvPassport2").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport3").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport3").show();
            } else {
                $("#dvPassport3").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport4").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport4").show();
            } else {
                $("#dvPassport4").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport5").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport5").show();
            } else {
                $("#dvPassport5").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport6").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport6").show();
            } else {
                $("#dvPassport6").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport7").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport7").show();
            } else {
                $("#dvPassport7").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport8").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport8").show();
            } else {
                $("#dvPassport8").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport9").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport9").show();
            } else {
                $("#dvPassport9").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport10").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport10").show();
            } else {
                $("#dvPassport10").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport11").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport11").show();
            } else {
                $("#dvPassport11").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport12").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport12").show();
            } else {
                $("#dvPassport12").hide();
            }
        });
    });











    
    function do_this(){

        var checkboxes = document.getElementsByName('approve[]');
        var button = document.getElementById('toggle');

        if(button.value == 'select'){
            for (var i in checkboxes){
                checkboxes[i].checked = 'FALSE';
            }
            button.value = 'deselect'
        }else{
            for (var i in checkboxes){
                checkboxes[i].checked = '';
            }
            button.value = 'select';
        }
    }