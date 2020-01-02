<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Baduy Biodiversity</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
	<script src="main.js"></script>

	<!-- open-iconic-bootstrap (icon set for bootstrap) -->
	<link rel="stylesheet" href="<?=base_url();?>assets/icon/css/open-iconic-bootstrap.min.css" integrity="sha256-BJ/G+e+y7bQdrYkS2RBTyNfBHpA9IuGaPmf9htub5MQ=" crossorigin="anonymous" />

	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css">

	<!-- User Css -->
	<link rel="stylesheet" href="<?=base_url();?>assets/detail.css">

	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Roboto|Roboto+Condensed" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Thasadith" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

</head>

<body>
	<?php $this->load->view('navbar');?>

	<main role="main">
		<div class="container pt-4">
			<div class="row">
				<div class="col">
					
					<h1 class="display-4"><?=$detail->nama_ilmiah?></h1>
					<hr class="my-4">
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<img class="img-detail" src="<?=$detail->gambar;?>" alt="">
				</div>
				<div class="col-md-7 detail">
					<div class="container">

						<p><strong>Nama Lokal</strong> : <?=$detail->nama_lokal?></p>
						<hr>

						<p><strong>Family</strong> : <?=$detail->family?></p>
						<hr>

						<p><strong>Fungsi Utama</strong> : <?=$detail->fungsi_utama?></p>
						<hr>

						<p><strong>Fungsi Pendukung</strong> : <?=$detail->fungsi_pendukung?></p>
						<hr>

						<p><strong>Penyakit yang dapat diobati</strong> : <?=$detail->penyakit?></p>
						<hr>

						<p><strong>Bagian Tumbuhan</strong> : <?=$detail->penyakit?></p>
						<hr>

						<p><strong>Cara Pengolahan</strong> : <?=$detail->penyakit?></p>
					</div>
					
				</div>			
			</div>
		</div>
		
		<div class="container con-map">
		<hr>
			<div class="row">
				<div class="col-md-12">
					<div class="map">
						<h3 class="display-4">Lokasi Persebaran</h3>
						<div id="map"></div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<footer>
		<p>&copy; Company 2017-2018</p>
	</footer>

	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	 crossorigin="anonymous"></script>
	<script>
		window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')

	</script>
	<script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>

	<script>
      function initMap() {
          
          var myLatLng = {lat: -6.639085, lng: 106.234157};
          var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 13,
              center: myLatLng
              });
              
              var marker = new google.maps.Marker({
                  position: myLatLng,
                  map: map,
                  title: 'Hello World!'
                  });
                  }
    </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDX_Q3acz_cBWIa216oqFjqbngKXOrADSY&callback=initMap" async defer>
	</script>
	
</body>

</html>
