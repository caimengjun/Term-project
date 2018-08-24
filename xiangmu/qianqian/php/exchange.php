<?php
	header("content-type:text/html;charset=utf-8");
if (isset($_POST["submit"])) {
    $con = mysqli_connect("localhost", "root", "", "qianqian");
    mysqli_query($con, "SET NAMES 'utf8'"); //在选择数据库表前，防止中文在浏览器中查看乱码  
    if($_POST["currency"]=='currency_1'){
    	$huilv = $_POST["money"] /6.4035;
    }else if($_POST["currency"]=='currency_2') {
    	$huilv = $_POST["money"] /0.8574;
    }else if($_POST["currency"]=='currency_3') {
    	$huilv = $_POST["money"] ;
    }

    $sql = "update xiangmu set yichoujine= $huilv + yichoujine, zhichizheshumu=zhichizheshumu+1 where id='xiangmu7'";
    
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('谢谢你的支持');
        	history.go(-1);
        	</script>";
    } else {
        echo "<script>alert('抱歉，投资未成功'); history.go(-1);</script>";
    }
   $sql2 = "insert into single(name,jine,time) values ('$_COOKIE[user]',$huilv,now())";
   $res2 = mysqli_query($con, $sql2);
}
?>