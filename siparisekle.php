
<!DOCTYPE html>
<html>
<head>
<title>HADİ BAS SPOR SALONU</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body{
	margin:0px;
	padding:0px;
	position:absolute;
	
	
}
.üst{
	background:	#01579B;
	width:1515px;
	height:80px;
	

	
	
}
.sidebar{
    background:	#03A9F4;
    width: 250px;
    height: 1300px;
    float: left;
	z-index: 2;
	position:absolute;
	
	
	
}
.anasayf{
	border-radius: 25px;
	padding-top:10px;
	margin-left:5px;
	



}
.mahalleler{
	padding-top:20px;
	margin-left:5px;
	
}
.harita{
	padding-top:20px;
	margin-left:5px;
}
.bune{
	padding-top:20px;
}
.bas{
	background:#000;
	width:1500px;
	height:40px;
    float:left;
    position:absolute;
}
.bas #genc{
	margin-left:1300px;
	position:absolute;

}
.bas span{
	color:white;
    padding-top:10px;
	padding-left:600px;
	font-family:georgia;
	font-size:20px;
}
.content{
	width:1515px;
	height:1000px;


}
.content .bune{
	margin-left:500px;
	padding-top:100px;
}
.mah{
	margin-left:900px;
	padding-top:80px;	

}
.mah label{
	border-style:inset;
	border-color:grey;
}
.parksay{
	margin-left:900px;
	padding-top:200px;
	position:absolute;
	height:0px;

}
.parksay label{
		border-style:inset;
		border-color:purple;
}
#result{
	margin-top:500px;
	margin-left:150px;
	background:#fff;
	width:400px;
	height:250px;
    text-align: center;
    border-style:ridge;
	position:absolute;


}
.eksik {
	margin-left:150px;
	display:flex;
	margin-top:800px;
	position:absolute;
}
#d4a{
	margin-left:600px;
	margin-top:750px;
	position:absolute;
}
.yıl{
	margin-top:500px;
	margin-left:900px;
	background:#912cee;
	color:white;
	width:400px;
	height:250px;
    text-align: center;
	border-style: ridge;
	position:absolute;
}
.deneme{
	margin-left:900px;
	margin-top:80px;
}
#buton{
	margin-top:300px;
	margin-left:50px;
	solid:black;
	background:white;
}

.deneme span{
	margin-top:300px;
	border-style:inset;
	border-color:white;
	
}
#get{
	solid:#4CAF50;
	background:white;

}


</style>
<script type="text/javascript">
function pencereAc(adres)
{
    window.open(adres, "_blank");
}
function ana()
{
    pencereAc("anasayfa.php");
}
</script>
<script type="text/javascript">
function pencereAc(adres)
{
    window.open(adres, "_blank");
}
function cık()
{
    pencereAc("yönetici.php");
}
</script>
<script type="text/javascript">

function pencereAc(adres)
{
    window.open(adres, "_blank");
}
function ekle()
{
    pencereAc("yeni.php");
}
</script>

<script type="text/javascript">
function pencereAc(adres)
{
    window.open(adres, "_blank");
}
function pencereAcTest()
{
    pencereAc("ürün.php");
}
</script>
<script type="text/javascript">
function pen(adres)
{
    window.open(adres, "_blank");
}
function sp()
{
    pencereAc("siparisekle.php");
}

</script>

<script type="text/javascript">
function pen(adres)
{
    window.open(adres, "_blank");
}
function st()
{
    pencereAc("stok.php");
}

</script>

<script type="text/javascript">
function pen(adres)
{
    window.open(adres, "_blank");
}
function siparis()
{
    pencereAc("siparis.php");
}

</script>
<script type="text/javascript">
function pen(adres)
{
    window.open(adres, "_blank");
}
function tarih()
{
    pencereAc("tarih.php");
}

</script>

<script>
$("#d4a").click(function(){
   $("#db4b").animate({
      height:'toggle'
   });
 });
</script>








</head>

<body>
    <div id="piechart" style="position:absolute; width:700px; height:400px; margin-left:800px; margin-top:200px; chartArea.backgroundColor:red;"> </div>
<div class="üst"> <br><center> <font size=6 color=white face='Cursive'> HADİ BAS SPOR SALONU </font></center>



</div>
<div class="sidebar"> 
        <div class="anasayf">
	    <button id="an" onClick="ekle()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px; "> VERİ GİRİŞİ</button>
	    </div>
		<div class="mahalleler"> 
		
		<input type="button"  value="ŞUBE ÇALIŞAN SAYISI" onClick="pencereAcTest()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px; "/>
		</div>
		<div class="harita">
		<input type="submit" value="ÇALIŞAN LİSTESİ" onClick="siparis()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px;  "/></div>
		<div class="harita">
		<input type="submit" value="ÜYELER LİSTESİ" onClick="st()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px;"/></div>
		<div class="harita">
		<input type="submit" value="ŞUBE KONTROL" onClick="sp()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px; "/></div>
		<div class="harita">
		<input type="submit" value="ANASAYFA" onClick="ana()" style="width:240px; height:50px; color:black; border-style:none; background-color:#FFFFFF;border-radius: 15px;"/></div>
		<div class="harita">
		<input type="submit" value="ÇIKIŞ" onClick="cık()" style="width:240px; height:50px; color:white; border-style:none; background-color:black;border-radius: 15px;"/></div>
		
		<div class=""></div>
		
		
		
</div>
<div class="content">
<div class="getir">	


<table border="0" width='600px' height='50px' align="center"> 
<td align=center colspan="5"> <font size=4 color=red face='Cursive'> <b> POTANSİYEL YENİ ŞUBE NOKTALARI</b></td>
<br>
	<tr>
		<th bgcolor="#B39DDB"><i><font color=white>İD</th>
		<th bgcolor="#B39DDB"><i><font color=white>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Şube Ad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
		<th bgcolor="#B39DDB"><i><font color=white>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Üye Sayısı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>

	</tr>
<?php 
$baglanti=mysqli_connect("localhost","root","","samet");
$baglanti->set_charset("utf8");
$sql="SELECT subeler.sube_id,subeler.sube_ad, COUNT(uyeler.uye_id) AS uye_sayisi FROM subeler,uyeler WHERE subeler.sube_id=uyeler.sube_id GROUP BY subeler.sube_id HAVING uye_sayisi>12";
$sorgu=mysqli_query($baglanti,$sql);
$a="TL";
while( $sonuc=mysqli_fetch_array($sorgu,MYSQLI_ASSOC) ){
	echo '<tr>';
	echo "<td align='center' bgcolor=#C5CAE9>"."<font face='Cursive'>".$sonuc["sube_id"]."</td>";
	echo "<td align='center' bgcolor=#C5CAE9>"."<font face='Cursive'>".$sonuc["sube_ad"]."</td>";
	echo "<td align='center' bgcolor=#C5CAE9>"."<font face='Cursive'>".$sonuc["uye_sayisi"]."</td>";
	echo '</tr>';
	
	
	
	

 }

?>
<table border="0" width='1200px' height='50px' align="right"> 
<tr>
<td> <br> <br>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Şube Adı', 'Üye Sayısı'],
          ['Buca Şubesi 1', 13],
          ['Buca Şubesi 2', 11],
          ['Konak Şubesi 1', 8],
          ['Bornova Şubesi 1', 10],
		  ['Çeşme Şubesi 1', 12],
          ['Çiğli Şubesi 1', 14],
          ['Urla Şubesi 1', 10],
          ['Karşıyaka Şubesi 1', 15],
		  ['Güzelbahçe Şubesi 1', 17]
          
		  
        ]);

        var options = {
          chart: {

          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 1180px; height: 300px;"></div>
</td>



<br>
<br>


















</html>


