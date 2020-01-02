<?php
	$id 			= $tumbuhan->id;
if($this->input->post('is_submitted')){
    $nama_ilmiah		= set_value('nama_ilmiah');
    $nama_lokal			= set_value('nama_lokal');
    $family				= set_value('family');
    $fungsi_utama		= set_value('fungsi_utama');
    $fungsi_pendukung	= set_value('fungsi_pendukung');
    $penyakit			= set_value('penyakit');
    $bagian_tumbuhan	= set_value('bagian_tumbuhan');
    $cara_pengolahan	= set_value('cara_pengolahan');
    
} else {
	
	$nama_ilmiah		= $tumbuhan->nama_ilmiah;
    $nama_lokal			= $tumbuhan->nama_lokal;
    $family         	= $tumbuhan->family;
    $fungsi_utama 		= $tumbuhan->fungsi_utama;
    $fungsi_pendukung 	= $tumbuhan->fungsi_pendukung;
	$penyakit			= $tumbuhan->penyakit;
	$bagian_tumbuhan	= $tumbuhan->bagian_tumbuhan;
	$cara_pengolahan 	= $tumbuhan->cara_pengolahan;
}
?>

<!doctype html>
<html>
	<head>
		<title>Ubah Data</title>
		<!-- Load JQuery dari CDN -->
		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		
		<!-- Bootstrap core CSS -->
        <link href="<?=base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">

        <link href="<?=base_url();?>assets/css/user/dashboard.css" rel="stylesheet">


	</head>
	<body>
		<!-- dalam div row harus ada col yang maksimum nilainya 12 -->
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-8">
				<h1>Ubah Data</h1>
				<div><?= validation_errors() ?></div>
				<?= form_open_multipart('admin/ubah/'.$tumbuhan->id, ['class'=>'form-horizontal']) ?>
					
					  <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Nama Ilmiah</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="nama_ilmiah" placeholder="" value="<?=$tumbuhan->nama_ilmiah?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Nama Lokal</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="nama_lokal" placeholder="" value="<?=$tumbuhan->nama_lokal?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Family</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="family" placeholder="" value="<?=$tumbuhan->family?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Fungsi Utama</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="fungsi_utama" placeholder="" value="<?=$tumbuhan->fungsi_utama?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Fungsi Pendukung</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="fungsi_pendukung" placeholder="" value="<?=$tumbuhan->fungsi_pendukung?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Penyakit</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="penyakit" placeholder="" value="<?= $tumbuhan->penyakit ?>">
						</div>
					  </div>

					  <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Bagian Tumbuhan</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="bagian_tumbuhan" placeholder="" value="<?= $tumbuhan->bagian_tumbuhan ?>">
						</div>
					  </div>

					  <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Cara Pengolahan</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="cara_pengolahan" placeholder="" value="<?= $tumbuhan->cara_pengolahan ?>">
						</div>
					  </div>
					  
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Gambar</label>
						<div class="col-sm-10">
						  <input type="file" class="form-control" name="userfile" >
						</div>
					  </div>
					  
					  <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						  <button type="submit" class="btn btn-primary">Save</button>
                          <a href="<?=base_url();?>index.php/admin" class="btn btn-danger">Kembali</a>
						</div>
					  </div>
					
				<?= form_close() ?>
			</div>
	</body>
</html>