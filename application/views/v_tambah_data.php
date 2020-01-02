<!doctype html>
<html>
	<head>
		<title>Tambah Data</title>
		<!-- Load JQuery dari CDN -->
		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		
		<!-- Bootstrap core CSS -->
        <link href="<?=base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">

        <link href="<?=base_url();?>assets/dashboard.css" rel="stylesheet">


	</head>
	<body>
	<div class="container form-submissions">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1>Tumbuhan</h1>
				<p></p>
				<div>
					<?= validation_errors() ?>
				</div>
				<?= form_open_multipart('admin/tambah', ['class'=>'form-horizontal']) ?>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Nama Latin</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="nama_latin" placeholder="" value="<?= set_value('nama_latin') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-6 control-label">Nama Daerah</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="nama_daerah" placeholder="" value="<?= set_value('nama_daerah') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Habitat</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="habitat" placeholder="" value="<?= set_value('habitat') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Perawakan</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="perawakan" placeholder="" value="<?= set_value('perawakan') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Potensi</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="potensi" placeholder="" value="<?= set_value('potensi') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-4 control-label">Gambar</label>
					<div class="col-sm-12">
						<input type="file" class="form-control" name="userfile">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-12">
						<button type="submit" class="btn btn-primary btn-sm">Save</button>
						<a href="<?=base_url();?>index.php/home" class="btn btn-danger btn-sm">Kembali</a>
					</div>
				</div>


			</div>

			<div class="col-md-6">
				<h1>Klasifikasi</h1>
				<p></p>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Filum</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="filum" placeholder="" value="<?= set_value('filum') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-6 control-label">Kelas</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="kelas" placeholder="" value="<?= set_value('kelas') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Ordo</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="ordo" placeholder="" value="<?= set_value('ordo') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Family</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="family" placeholder="" value="<?= set_value('family') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Genus</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="genus" placeholder="" value="<?= set_value('genus') ?>">
					</div>
				</div>


			</div>

			<?= form_close() ?>
		</div>
	</body>
</html>