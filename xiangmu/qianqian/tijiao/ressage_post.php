<?php
session_start()
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <!-- <meta charset="utf-8"> -->
        <title></title>
    </head>
    <body>
        <?php
//        if (isset($_POST["submit"])) {
//    $con = mysqli_connect("localhost", "root", "", "qianqian");
//    mysqli_query($con, "SET NAMES 'utf8'"); //在选择数据库表前，防止中文在浏览器中查看乱码  
//
//        $favorite_arr = array();  
//        $favorite_arr = $_POST['favorite'];  
//        $favorite = implode('、', $favorite_arr);//把数组转换为字符串  
//    $sql_insert = "insert into message(Gender,favorite) values('$_POST[Gender]','$favorite')";
//    $res_insert = mysqli_query($con, $sql_insert);
//    if ($res_insert) {
//        echo "<script>alert('提交成功！') </script>";
//        echo '<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/dongman/dongman.php">';
//    } else {
//        echo "<script>alert('系统繁忙，请稍候！'); history.go(-1);</script>";
//    }
//}  
//         var_dump($_POST);
//        var_dump($_SESSION);


        include('conn.php');

//        header("content-type:text/html;charset=utf-8");
//        $favorite_arr = array();  
//        $favorite_arr = $_POST['favorite'];  
//        $favorite = implode('、', $favorite_arr);//把数组转换为字符串  
        $id = $_POST['id'];
        $biaoti = $_POST['biaoti'];
        $miaoshu = $_POST['miaoshu'];
        $guanjianzi = $_POST['guanjianzi'];



//        $imgname = $_FILES['tupian']['name'];
//        $tmp = $_FILES['tupian']['tmp_name'];
//        $filepath = 'photo/';
//        if (move_uploaded_file($tmp, $filepath . $imgname)) {
//            echo "上传成功";
//        } else {
//            echo "上传失败";
//        }
        $imgname = $_FILES['myfile']['name'];
        $tmp = $_FILES['myfile']['tmp_name'];
        $filepath = 'images/';
        // echo $imgname;
        if (move_uploaded_file($tmp, $filepath . $imgname)) {
            echo "上传成功";
        } else {
            echo "上传失败";
        }

        $mubiaojine = $_POST['mubiaojine'];

    

        $lnitiator = $_POST['lnitiator'];

        $leixing_arr = array();
        $leixing_arr = $_POST["leixing"];
        $leixing = implode(',', $leixing_arr);


        $choukuanzhouqi = $_POST['choukuanzhouqi'];
        $xiangmugushi = $_POST['xiangmugushi'];




        if ($conn) {
            $sql = "insert into xiangmu(id,biaoti,miaoshu,guanjianzi,tupian,mubiaojine,time,Initiator,leixing,choukuanzhouqi,xiangmugushi) VALUES ('{$id}','{$biaoti}','{$miaoshu}','{$guanjianzi}','{$imgname}','{$mubiaojine}','" . date("Y-m-d H:i:s") . "','{$lnitiator}','{$leixing}','{$choukuanzhouqi}','{$xiangmugushi}')";
            $result = mysqli_query($conn, $sql);

            if ($result) {

                echo "<script>alert('提交成功');location.href='../index.html';</script>";
            } else {
                die('SQL执行失败！' . mysql_error());
            }
        } else {
            die("数据库连接失败" . mysqli_connect_error());
        }

//if(!empty($_POST["age"]))
//{
// $array = $_POST["age"];
// $str =implode(',',$array);
// echo $str."<br>"; //输出  篮球,足球,乒乓球,排球  //$str 存入数据库
// 
//
//}
        ?>
    </body>
</html>
