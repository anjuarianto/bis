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
					<label for="inputEmail3" class="col-sm-4 control-label">Nama Ilmiah</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="nama_ilmiah" placeholder="" value="<?= set_value('nama_ilmiah') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-6 control-label">Nama Lokal</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="nama_lokal" placeholder="" value="<?= set_value('nama_lokal') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Family</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="family" placeholder="" value="<?= set_value('family') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Fungsi Utama</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="fungsi_utama" placeholder="" value="<?= set_value('fungsi_utama') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Fungsi Pendukung</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="fungsi_pendukung" placeholder="" value="<?= set_value('fungsi_pendukung') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Penyakit</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="penyakit" placeholder="" value="<?= set_value('penyakit') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Bagian Tumbuhan</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="bagian_tumbuhan" placeholder="" value="<?= set_value('bagian_tumbuhan') ?>">
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-4 control-label">Cara Pengolahan</label>
					<div class="col-sm-12">
						<input type="text" class="form-control" name="cara_pengolahan" placeholder="" value="<?= set_value('cara_pengolahan') ?>">
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

			<?= form_close() ?>
		</div>
	</body>
</html>