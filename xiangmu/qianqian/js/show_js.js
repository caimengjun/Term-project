$('.core').click(function () {
    $("img").show();
    $("p").show();
    $(".progress").show();
    $("hr").show();
    var x = $(this).attr("id");
    if (x == 'art') {
        $.post("sql.php", {zhonglei: x},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                    document.getElementById("img_2").src = returnValue[1][2];
                    document.getElementById("input2").innerHTML = returnValue[1][1];
                    document.getElementById("img_3").src = returnValue[2][2];
                    document.getElementById("input3").innerHTML = returnValue[2][1];
                    document.getElementById("img_4").src = returnValue[3][2];
                    document.getElementById("input4").innerHTML = returnValue[3][1];
                });

    } else if (x == 'sport') {
        $.post("sql.php", {zhonglei: x},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                    document.getElementById("img_2").src = returnValue[1][2];
                    document.getElementById("input2").innerHTML = returnValue[1][1];
                    document.getElementById("img_3").src = returnValue[2][2];
                    document.getElementById("input3").innerHTML = returnValue[2][1];
                    document.getElementById("img_4").src = returnValue[3][2];
                    document.getElementById("input4").innerHTML = returnValue[3][1];
                    document.getElementById("img_5").src = returnValue[4][2];
                    document.getElementById("input5").innerHTML = returnValue[4][1];
                });

    } else if (x == 'game') {
        $.post("sql.php", {zhonglei: x},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                    document.getElementById("img_2").src = returnValue[1][2];
                    document.getElementById("input2").innerHTML = returnValue[1][1];
                    document.getElementById("img_3").src = returnValue[2][2];
                    document.getElementById("input3").innerHTML = returnValue[2][1];
                    document.getElementById("img_4").src = returnValue[3][2];
                    document.getElementById("input4").innerHTML = returnValue[3][1];
                });

    } else if (x == 'life') {
        $.post("sql.php", {zhonglei: x},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                    document.getElementById("img_2").src = returnValue[1][2];
                    document.getElementById("input2").innerHTML = returnValue[1][1];
                    document.getElementById("img_3").src = returnValue[2][2];
                    document.getElementById("input3").innerHTML = returnValue[2][1];
                    document.getElementById("img_4").src = returnValue[3][2];
                    document.getElementById("input4").innerHTML = returnValue[3][1];
                });

    } else if (x == 'bas') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "sport"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                    document.getElementById("img_2").src = returnValue[1][2];
                    document.getElementById("input2").innerHTML = returnValue[1][1];
                });

    } else if (x == 'foot') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "sport"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });

    } else if (x == 'wushu') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "sport"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'swim') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "sport"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'diaosu') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "art"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'draw') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "art"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'sheji') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "art"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'jianzhu') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "art"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'fps') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "game"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'rpg') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "game"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'card') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "game"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'mobile') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "game"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'gongyi') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "life"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    } else if (x == 'hotel') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "life"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    }else if (x == 'film') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "life"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    }else if (x == 'rest') {
        $.post("sql_1.php", {zhonglei1: x, zhonglei: "life"},
                function (data) {
                    returnValue = JSON.parse(data);
                    document.getElementById("img_1").src = returnValue[0][2];
                    document.getElementById("input1").innerHTML = returnValue[0][1];
                });
    }

});