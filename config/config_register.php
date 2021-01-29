<?php
require_once   "koneksi.php";
$nama_depan = $_POST["namadepan"];
$nama_belakang = $_POST["namabelakang"];
$jns_kelamin = $_POST["jeniskelamin"];
$username = $_POST["username"];
$email = $_POST["email"]; 
$password = $_POST["password"];
$notel = $_POST["notel"];
$alamat = $_POST["alamat"];



$q = $database_connection -> prepare("INSERT INTO `daftar`
 (`id`, `nama_depan`, `nama_belakang`, `jns_kelamin`, `username`, `email`, `password`, `no_tel`, `alamat`) 
 VALUES (NULL, ?, ?, ?, ?, ?, SHA1(?), ?, ?);");
try{

$q-> execute([$nama_depan, $nama_belakang,$jns_kelamin, $username,$email, $password,$notel,$alamat]);
header("Location: ../login.php");

}catch(PDOException $x) {
    echo $x->getMessage();
    }
?>
