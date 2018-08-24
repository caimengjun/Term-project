$(document).ready(function() {
    $.post("php/details.php", function(json) {
        var a = $.parseJSON(json);

        $("#biaoti").text(a[0].biaoti);
        $("#logo").attr("src","images/"+a[0].logo);
        $("#tupian").attr("src","images/"+ a[0].tupian);
        $("#yichoujine").text(a[0].yichoujine);
        $("#zhichizheshumu").text(a[0].zhichizheshumu);
        $("#guanjianzi").text(a[0].guanjianzi);
        $("#Initiator").text(a[0].Initiator);
        $("#mubiaojine").text(a[0].mubiaojine);
        $("#baifenbi").text(Math.round(a[0].yichoujine / a[0].mubiaojine * 100));
        $("#jindutiao").width(Math.round(a[0].yichoujine / a[0].mubiaojine * 100) + "%");

        
    });


        $.post("php/zhichijilu.php", function(json) {
            var a = $.parseJSON(json);
            $("#myTemplate").tmpl(a).appendTo("#rows");
        });

})