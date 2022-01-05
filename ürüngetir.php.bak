<?php
$baglanti=mysqli_connect("localhost","root","","kds");
$baglanti->set_charset("utf8");
if($baglanti){
    if ($_POST) {
        if(strip_tags(trim(isset($_POST["sube_id"])))){
            $sube_id=$_POST["sube_id"];
        }
		   if(strip_tags(trim(isset($_POST["sube_ad"])))){
            $sube_ad=$_POST["sube_ad"];
			
        }
        		   if(strip_tags(trim(isset($_POST["ilce_id"])))){
            $ilce_id=$_POST["ilce_id"];
        }
  
        		   


        $sorgu=mysqli_query($baglanti,"INSERT INTO sube(sube_id,sube_ad,ilce_id) VALUES
            ('".$sube_id."','".$sube_ad."','".$ilce_id."')");
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