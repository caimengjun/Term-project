<?php
header("content-type:text/html;charset=utf-8");
$servername = "localhost";
$username = "root";
$password = "";
$mysqlname = "qianqian";
$json = '';
$chaxunshu = $_POST["chaxunshu"];
$data = array();
class User
{
    public $id;
    public $biaoti;
    public $miaoshu;
    public $guanjianzi;
    public $tupian;
    public $mubiaojine;
    public $yichoujine;
    public $zhichizheshumu;
}
if(isset($_POST["sousuo"])){
    $sousuo="$_POST[sousuo]";
}
// 创建连接
$conn = mysqli_connect($servername, $username, $password, $mysqlname);
$conn->query('SET NAMES UTF8');

if ($chaxunshu == 1) {
    $sql = "SELECT * FROM lunbotu";
    $result = $conn->query($sql);
    if ($result) {
        while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
            $user = new User();
            $user->id = $row["id"];
            $user->tupian = $row["tupian"];
            $data[] = $user;
        }
        $json = json_encode($data);//把数据转换为JSON数据.
        echo $json;
    } else {
        echo "查询失败";
    }
} else if ($chaxunshu == 2 ) {
    $sql = "SELECT * FROM xiangmu order by time desc";
    $result = $conn->query($sql);
    if ($result) {
        while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
            $user = new User();
            $user->id = $row["id"];
            $user->biaoti = $row["biaoti"];
            $user->miaoshu = $row["miaoshu"];
            $user->guanjianzi = $row["guanjianzi"];
            $user->tupian = $row["tupian"];
            $user->mubiaojine = $row["mubiaojine"];
            $user->yichoujine = $row["yichoujine"];
            $user->zhichizheshumu = $row["zhichizheshumu"];
            $data[] = $user;
        }
        $json = json_encode($data);//把数据转换为JSON数据.
        echo $json;
    } else {
        echo "查询失败";
    }
} else if ($chaxunshu == 3 ) {
    $sql = "SELECT * FROM xiangmu order by yichoujine desc";
    $result = $conn->query($sql);
    if ($result) {
        while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
            $user = new User();
            $user->id = $row["id"];
            $user->biaoti = $row["biaoti"];
            $user->miaoshu = $row["miaoshu"];
            $user->guanjianzi = $row["guanjianzi"];
            $user->tupian = $row["tupian"];
            $user->mubiaojine = $row["mubiaojine"];
            $user->yichoujine = $row["yichoujine"];
            $user->zhichizheshumu = $row["zhichizheshumu"];
            $data[] = $user;
        }
        $json = json_encode($data);//把数据转换为JSON数据.
        echo $json;
    } else {
        echo "查询失败";
    }
} else if ($chaxunshu == 4 ) {
    $sql = "SELECT * FROM xiangmu where biaoti like '%$sousuo%' or miaoshu like '%$sousuo%' or guanjianzi like '%$sousuo%'";
    $result = $conn->query($sql);
    if ($result) {
        while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
            $user = new User();
            $user->id = $row["id"];
            $user->biaoti = $row["biaoti"];
            $user->miaoshu = $row["miaoshu"];
            $user->guanjianzi = $row["guanjianzi"];
            $user->tupian = $row["tupian"];
            $user->mubiaojine = $row["mubiaojine"];
            $user->yichoujine = $row["yichoujine"];
            $user->zhichizheshumu = $row["zhichizheshumu"];
            $data[] = $user;
        }
        $json = json_encode($data);//把数据转换为JSON数据.
        echo $json;
    } else {
        echo "查询失败";
    }
}

?>