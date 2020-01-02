<!doctype html>
<html>

<head>
	<title>Submissions</title>
	<!-- Load JQuery dari CDN -->
	<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>

	<!-- Bootstrap core CSS -->
	<link href="http://localhost/bis/assets/css/bootstrap.min.css" rel="stylesheet">

	<link href="http://localhost/bis/assets/dashboard.css" rel="stylesheet">


</head>

<body>
	<div class="container form-submissions">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1>Submissions</h1>
				<p></p>
				<div>
					<?= validation_errors() ?>
				</div>
				<?= form_open_multipart('submissions/tambah', ['class'=>'form-horizontal']) ?>

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


			<?= form_close() ?>
		</div>
</body>

</html>
