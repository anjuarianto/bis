<?php
	$id 			= $tumbuhan->id;
if($this->input->post('is_submitted')){
    $nama_latin			= set_value('nama_latin');
    $nama_daerah        = set_value('nama_daerah');
    $family             = set_value('family');
    $habitat            = set_value('habitat');
    $perawakan          = set_value('perawakan');
    $potensi            = set_value('potensi');
    
} else {
	
	$nama_latin     = $tumbuhan->nama_latin;
    $nama_daerah    = $tumbuhan->nama_daerah;
    $family         = $tumbuhan->family;
    $habitat        = $tumbuhan->habitat;
    $perawakan      = $tumbuhan->perawakan;
    $potensi        = $tumbuhan->potensi;
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
						<label for="inputEmail3" class="col-sm-2 control-label">Nama Latin</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="nama_latin" placeholder="" value="<?=$tumbuhan->nama_latin?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Nama Daerah</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="nama_daerah" placeholder="" value="<?=$tumbuhan->nama_daerah?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Family</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="family" placeholder="" value="<?=$tumbuhan->family?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Habitat</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="habitat" placeholder="" value="<?=$tumbuhan->habitat?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Perawakan</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="perawakan" placeholder="" value="<?=$tumbuhan->perawakan?>">
						</div>
					  </div>

                      <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Potensi</label>
						<div class="col-sm-10">
						  <input type="text" class="form-control" name="potensi" placeholder="" value="<?= $tumbuhan->potensi ?>">
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