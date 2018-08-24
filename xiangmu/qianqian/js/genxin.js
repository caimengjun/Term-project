$(document).ready(function() {
    $.post("php/genxin.php", function(json) {
        var a = $.parseJSON(json);

        $("#time").text(a[0].time);
        $("#neirong").text(a[0].neirong);
        $("#faqiren").text(a[0].faqiren);

    });


})