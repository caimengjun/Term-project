<?php
$dsn = 'mysql:host=localhost;dbname=qianqian';
$username='root';
$passwd='';
$pdo=new PDO($dsn, $username, $passwd);
$pdo->exec("set names utf8");
//PDO连接数据库
//$sql1 = "select * from sport ";
$zhonglei = $_POST['zhonglei'];
//$zhonglei1 = $_POST['zhonglei1'];
//$sql1 = "select * from mytable where type='$zhonglei'and type1='$zhonglei1'";
$sql1 = "select * from mytable where type='$zhonglei'";
$st1 = $pdo->query($sql1);
$st = $st1->fetchALL(PDO::FETCH_NUM);

// for ($i = 0; $i < 5; $i++) {
//     $arr1[$i] = $st[$i]['des'];
// }
//print_r($st);
$b = json_encode($st);
echo $b;

?>



