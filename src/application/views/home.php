<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Baduy Biodiversity | Home</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">

   <!-- open-iconic-bootstrap (icon set for bootstrap) -->
	<link rel="stylesheet" href="<?=base_url('assets/icon/css/open-iconic-bootstrap.min.css');?>" integrity="sha256-BJ/G+e+y7bQdrYkS2RBTyNfBHpA9IuGaPmf9htub5MQ=" crossorigin="anonymous" />


   <!-- Bootstrap -->
   <link rel="stylesheet" href="<?=base_url('assets/css/bootstrap.min.css');?>">

   <!-- User Css -->
   <link rel="stylesheet" href="<?=base_url('assets/jumbotron.css');?>">

   <!-- Font -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Roboto|Roboto+Condensed" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Thasadith" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

</head>

<body>
   <?php $this->load->view('navbar');?>

   <main role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron background text-center">
         <div class="container">
            <h1 class="display-3">Baduy Biodiversity</h1>
            <p>Sistem Informasi Keanekaragaman Hayati Pohon pada Hutan Adat Suku Baduy</p>
         </div>
      </div>

		<div class="container-fluid p-2 my-5">
			<h1 class="text-center mb-3">Suku Baduy</h1>
			<div class="row d-flex justify-content-center">
				<div class="col-md-6">
				<hr>
					<div class="text-justify">
						<p>Urang Kanekes, Orang Kanekes atau Orang Baduy/Badui merupakan kelompok masyarakat adat suku Banten di wilayah Kabupaten Lebak, Banten. Populasi mereka sekitar 26.000 orang, dan mereka merupakan salah satu suku yang mengisolasi diri mereka dari dunia luar. Selain itu mereka juga memiliki keyakinan tabu untuk didokumentasikan, khususnya penduduk wilayah Baduy Dalam.</p>
						<p>Sebutan "Baduy" merupakan sebutan yang diberikan oleh penduduk luar kepada kelompok masyarakat tersebut, berawal dari sebutan para peneliti Belanda yang agaknya mempersamakan mereka dengan kelompok Arab Badawi yang merupakan masyarakat yang berpindah-pindah (nomaden). Kemungkinan lain adalah karena adanya Sungai Baduy dan Gunung Baduy yang ada di bagian utara dari wilayah tersebut. Mereka sendiri lebih suka menyebut diri sebagai urang Kanekes atau "orang Kanekes" sesuai dengan nama wilayah mereka, atau sebutan yang mengacu kepada nama kampung mereka seperti Urang Cibeo (Garna, 1993).</p>
						<p>Suku Baduy adalah masyarakat yang hidupnya sengaja mengasingkan diri dari masyarakat lain di sekitarnya tetapi bukan masyarakat suku terasing. Bahan pangan, sandang, dan papan mereka upayakan sendiri dari sumberdaya hutan yang ada di sekitar tempat tinggal mereka. Hutan dan alam sekitarnya merupakan sumber hidup dan kehidupan mereka; dijaga oleh sebuah sistem adat yang amat kuat dan merupakan juga batasan pola hidup mereka. Ketergantungan hidup itu tercermin dalam berbagai bentuk tatanan adat istiadat yang kuat dalam mengelola sumberdaya di lingkungannya</p>
						<p>Menurut penelitian Wardah, tercatat 163 jenis dari 49 suku yang meliputi 77 jenis pohon, 24 jenis terna, 18 jenis rumpun, 16 jenis perdu, 15 jenis liana, 9 jenis semak, 3 jenis herba, dan 1 jenis epifi. Sebanyak 46 jenis (29 %) berpotensi sebagai tanaman pangan, 38 jenis (23 %) sebagai tanaman obat, 25 jenis (15 %) sebagai bahan bakar, 17 jenis (10%) sebagai bahan bangunan, 8 jenis (5 %) untuk upacara ritual, 4 jenis (2 %) sebagai bahan kerajinan, 3 jenis (2%) berpotensi secara ekonomi, 1 jenis (1 %) untuk sumber bahan minuman, dan 14 jenis (13 %) untuk penggunaan lain-lain</p>
						<p>Berdasarkan penelitian tersebut perlu dibuat aplikasi untuk kepentingan pelestarian dan pemanfaatan keanekaragaman hayati pada hutan adat Suku Baduy ini maka perlu dikumpulkan seluruh data yang tersimpan dalam sebuah database dan dapat diakses oleh orang banyak pada waktu dan tempat dimana saja, untuk itu perlu dibangun dibangun aplikasi berbasis web yang mampu menampilkan informasi keanekaragaman hayati hutan adat Suku Baduy.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container mb-5">
			<div class="row d-flex justify-content-center">
				<div class="col-md text-center">
					<div class="card p-4 mx-2">
						<h5>Pencarian</h5>
						<hr>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt iste numquam veritatis nemo mollitia illo, id harum assumenda quo facilis deserunt. Ab perferendis natus vel nisi quasi neque! Aspernatur, assumenda?</p>
						<span class="oi oi-magnifying-glass pb-4"></span>
						<a href="<?=base_url();?>index.php/browse" class="btn btn-success">Lihat..</a>
					</div>
				</div>
				<div class="col-md">
					<div class="card text-center p-4 mx-2">
						<h5>Pengajuan Data</h5>
						<hr>
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis ratione quaerat, eius quasi distinctio error hic perspiciatis iusto harum consectetur ullam laboriosam blanditiis eligendi repudiandae quibusdam cum dolorem voluptate in.</p>
						<span class="oi oi-file pb-4"></span>
						<a href="<?=base_url()?>index.php/submissions" class="btn btn-success">Lihat..</a>
					</div>
				</div>
			</div>
		</div>
      
   </main>

   <footer>
        <div id="footer" class="container">
            <div class="row">
                <div class="col-6">
                    <h5>Kontak</h5>
                    <p>Alamat : Jl. Jenderal Sudirman Km 3, Kotabumi, Kec. Purwakarta, Kota Cilegon, Banten 42435</p>
                    <p>Email : contoh@testing.com</p>
                    <p>Telp : 0215-000-9000</p>
                </div>
                <div class="col-3">
                    <h5>Fitur</h5>
						  <ul style="list-style-type: none; padding:0" >
							<li><a href="<?= base_url('index.php/browse') ?>" style="text-decoration:none; color:white;">Pencarian</a></li>
						  	<li><a href="<?= base_url('index.php/submission') ?>" style="text-decoration:none; color:white;">Pengajuan Data</a></li>
						  </ul>
                </div>
            </div>
        </div>
   </footer>
   <!-- Bootstrap core JavaScript
	================================================== -->
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
   <script>
      window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
   </script>
</body>

</html>
