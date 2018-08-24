<?php
header("content-type:text/html;charset=utf-8");
$get = $_GET["sousuo"];


$servername = "localhost";
$username = "root";
$password = "";
$mysqlname = "qianqian";
$json = '';
$data = array();
class User
{
    public $id;
    public $biaoti;
    public $miaoshu;
}

// 创建连接
$conn = mysqli_connect($servername, $username, $password, $mysqlname);
$conn->query('SET NAMES UTF8');

$sql = "SELECT * FROM xiangmu where biaoti like '%$get%' or miaoshu like '%$get%'";
$result = $conn->query($sql);

if ($result) {
    while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
        $user = new User();
        $user->id = $row["id"];
        $user->biaoti = $row["biaoti"];
        $user->miaoshu = $row["miaoshu"];
        $data[] = $user;
    }
    $json = json_encode($data);//把数据转换为JSON数据.
    echo $json;
} else {
    echo "查询失败";
}
header("Location: http://localhost/xm/sousuo.html");
?>