//获取url传递的参数
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return decodeURI(r[2]);
    return null;
}

$(document).ready(function() {
    $("#sousuo").val(getQueryString("sousuo"));
    $.post("php/index.php", { chaxunshu: 1 }, function(json) {
        var a = $.parseJSON(json);

        $("#lunbotu1").attr("src","images/"+ a[0].tupian);
        $("#lunbotu2").attr("src","images/"+ a[1].tupian);
        $("#lunbotu3").attr("src","images/"+ a[2].tupian);

    });
    $.post("php/index.php", { sousuo: getQueryString("sousuo"), chaxunshu: 4 }, function(json) {
        var a = $.parseJSON(json);
        var sousuoneirong = getQueryString("sousuo");
        if (sousuoneirong == null || a == "" || sousuoneirong == "") {} else {
            $("#sousuotishi").hide();
            $("#myTemplate").tmpl(a).appendTo("#sousuozhanshi");
            for (var i = 0; i < a.length; i++) {
                $("." + a[i].id).text(Math.round(a[i].yichoujine / a[i].mubiaojine * 100));
                $("#" + a[i].id).width(Math.round(a[i].yichoujine / a[i].mubiaojine * 100) + "%");
            }
        }
    });
});