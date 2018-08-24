$(document).ready(function() {

    $.post("php/index.php", { chaxunshu: 1 }, function(json) {
        var a = $.parseJSON(json);

        $("#lunbotu1").attr("src","tijiao/images/" + a[0].tupian);
        $("#lunbotu2").attr("src","tijiao/images/" + a[1].tupian);
        $("#lunbotu3").attr("src","tijiao/images/" + a[2].tupian);

    });

    $.post("php/index.php", { chaxunshu: 2 }, function(json) {
        var a = $.parseJSON(json);

        $("#biaoti1").text(a[0].biaoti);
        $("#miaoshu1").text(a[0].miaoshu);
        $("#tupian1").attr("src","tijiao/images/"+ a[0].tupian);
        $("#yichoujine1").text(a[0].yichoujine);
        $("#zhichizheshumu1").text(a[0].zhichizheshumu);
        $("#guanjianzi1").text(a[0].guanjianzi);
        $("#choukuanjindu1").text(Math.round(a[0].yichoujine / a[0].mubiaojine * 100));
        $("#jindutiao1").width(Math.round(a[0].yichoujine / a[0].mubiaojine * 100) + "%");

        $("#biaoti2").text(a[1].biaoti);
        $("#miaoshu2").text(a[1].miaoshu);
        $("#tupian2").attr("src","tijiao/images/"+ a[1].tupian);
        $("#yichoujine2").text(a[1].yichoujine);
        $("#zhichizheshumu2").text(a[1].zhichizheshumu);
        $("#guanjianzi2").text(a[1].guanjianzi);
        $("#choukuanjindu2").text(Math.round(a[1].yichoujine / a[1].mubiaojine * 100));
        $("#jindutiao2").width(Math.round(a[1].yichoujine / a[1].mubiaojine * 100) + "%");

        $("#biaoti3").text(a[2].biaoti);
        $("#miaoshu3").text(a[2].miaoshu);
        $("#tupian3").attr("src","tijiao/images/"+ a[2].tupian);
        $("#yichoujine3").text(a[2].yichoujine);
        $("#zhichizheshumu3").text(a[2].zhichizheshumu);
        $("#guanjianzi3").text(a[2].guanjianzi);
        $("#choukuanjindu3").text(Math.round(a[2].yichoujine / a[2].mubiaojine * 100));
        $("#jindutiao3").width(Math.round(a[2].yichoujine / a[2].mubiaojine * 100) + "%");
    });

    $.post("php/index.php", { chaxunshu: 3 }, function(json) {
        var a = $.parseJSON(json);

        $("#biaoti4").text(a[0].biaoti);
        $("#miaoshu4").text(a[0].miaoshu);
        $("#tupian4").attr("src","tijiao/images/"+ a[0].tupian);
        $("#yichoujine4").text(a[0].yichoujine);
        $("#zhichizheshumu4").text(a[0].zhichizheshumu);
        $("#guanjianzi4").text(a[0].guanjianzi);
        $("#choukuanjindu4").text(Math.round(a[0].yichoujine / a[0].mubiaojine * 100));
        $("#jindutiao4").width(Math.round(a[0].yichoujine / a[0].mubiaojine * 100) + "%");

        $("#biaoti5").text(a[1].biaoti);
        $("#miaoshu5").text(a[1].miaoshu);
        $("#tupian5").attr("src","tijiao/images/"+ a[1].tupian);
        $("#yichoujine5").text(a[1].yichoujine);
        $("#zhichizheshumu5").text(a[1].zhichizheshumu);
        $("#guanjianzi5").text(a[1].guanjianzi);
        $("#choukuanjindu5").text(Math.round(a[1].yichoujine / a[1].mubiaojine * 100));
        $("#jindutiao5").width(Math.round(a[1].yichoujine / a[1].mubiaojine * 100) + "%");

        $("#biaoti6").text(a[2].biaoti);
        $("#miaoshu6").text(a[2].miaoshu);
        $("#tupian6").attr("src","tijiao/images/"+ a[2].tupian);
        $("#yichoujine6").text(a[2].yichoujine);
        $("#zhichizheshumu6").text(a[2].zhichizheshumu);
        $("#guanjianzi6").text(a[2].guanjianzi);
        $("#choukuanjindu6").text(Math.round(a[2].yichoujine / a[2].mubiaojine * 100));
        $("#jindutiao6").width(Math.round(a[2].yichoujine / a[2].mubiaojine * 100) + "%");
    });
});