<?php

$baglanti=mysqli_connect("localhost","root","","samet");
$baglanti->set_charset("utf8");
if($baglanti){
    if ($_POST) {
        if(strip_tags(trim(isset($_POST["uye_id"])))){
            $uye_id=$_POST["uye_id"];
        }
		   if(strip_tags(trim(isset($_POST["uye_ad"])))){
            $uye_ad=$_POST["uye_ad"];
			
        }
        		   if(strip_tags(trim(isset($_POST["uye_soyad"])))){
            $uye_soyad=$_POST["uye_soyad"];
        }
		if(strip_tags(trim(isset($_POST["sube_id"])))){
            $sube_id=$_POST["sube_id"];
        }
		if(strip_tags(trim(isset($_POST["abonelik_id"])))){
            $abonelik_id=$_POST["abonelik_id"];
        }
		if(strip_tags(trim(isset($_POST["cinsiyet_id"])))){
            $cinsiyet_id=$_POST["cinsiyet_id"];
        }
  
        		   


        $sorgu=mysqli_query($baglanti,"INSERT INTO uyeler(uye_id,uye_ad,uye_soyad,sube_id,abonelik_id,cinsiyet_id) VALUES
            ('".$uye_id."','".$uye_ad."','".$uye_soyad."','".$sube_id."','".$abonelik_id."','".$cinsiyet_id."')");
        if ($sorgu==true) {
            echo "Kayıt veritabanına eklendi.";
			header( "refresh:2;url=yeni.php" ); 
        } else {
            echo "Hata:".$sorgu.$baglanti->error;
        }
		mysqli_close($baglanti);
    } else {
        echo "Veriler gelmedi";
    }
}



else { 
    die("bağlantı sağlanamadı");
}

?>