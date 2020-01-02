<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Taksonomi</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="http://localhost/bis/assets/taxonomy.css" />
	<script src="main.js"></script>
	 <!-- open-iconic-bootstrap (icon set for bootstrap) -->
	 <link rel="stylesheet" href="<?=base_url();?>assets/icon/css/open-iconic-bootstrap.min.css" integrity="sha256-BJ/G+e+y7bQdrYkS2RBTyNfBHpA9IuGaPmf9htub5MQ=" crossorigin="anonymous" />

	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css">

	<!-- User Css -->
	<link rel="stylesheet" href="<?=base_url();?>assets/taxonomy.css">

</head>

<body>
	<?php $this->load->view('navbar'); ?>
	<!-- Container -->
	<main role="main">

	
	<div class="container container-isi">
		<h1>Taxonomy Hierarchy</h1>
		<hr>

		<div class="parent-kelas">
			<ul>
				<div class="kelas"><h5>Kelas</h5>
					<li><input type="checkbox" id="1"><label for="1"><span class="oi oi-folder"> Magnoliopsida</label>
						<ul><h5>Ordo</h5>
							<li><input type="checkbox" id="1.1"><label for="1.1"><span class="oi oi-folder"> Lamiales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.1.1"><label for="1.1.1"><span class="oi oi-folder"> Acanthaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/1"><span class="oi oi-arrow-right"> Strurogyne Elongata</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><input type="checkbox" id="1.2"><label for="1.2"><span class="oi oi-folder"> Ericales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.2.1"><label for="1.2.1"><span class="oi oi-folder"> Actinidiaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/2"><span class="oi oi-arrow-right"> Saurauia Cauliflora DC</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/3"><span class="oi oi-arrow-right"> Saurauia Javanica (Nees) Hoogl</a></li>
										</ul>
									</li>
								</ul>
							</li>


							<li><input type="checkbox" id="1.3"><label for="1.3"><span class="oi oi-folder"> Sapindales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.3.1"><label for="1.3.1"><span class="oi oi-folder"> Anacardiaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/6"><span class="oi oi-arrow-right"> Dracontomelon dao (Balnaco) Merr & Rolfe</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/7"><span class="oi oi-arrow-right"> Mangifera sp.</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><input type="checkbox" id="1.4"><label for="1.4"><span class="oi oi-folder"> Magnoliales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.4.1"><label for="1.4.1"><span class="oi oi-folder"> Annonaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/8"><span class="oi oi-arrow-right"> Fissistigma cf latifolia</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/9"><span class="oi oi-arrow-right"> Fissistigma cf mambriatus</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><input type="checkbox" id="1.5"><label for="1.5"><span class="oi oi-folder"> Gentianales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.5.1"><label for="1.5.1"><span class="oi oi-folder"> Apocynaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/13"><span class="oi oi-arrow-right"> Alstonia Scholaris</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/14"><span class="oi oi-arrow-right"> Voacanga grandifolia (Miq)Rolfe</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><input type="checkbox" id="1.6"><label for="1.6"><span class="oi oi-folder"> Apiales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="1.6.1"><label for="1.6.1"><span class="oi oi-folder"> Araliaceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/20"><span class="oi oi-arrow-right"> Polycias nodosa (Dc.) Seem</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>

					<li><input type="checkbox" id="2"><label for="2"><span class="oi oi-folder"></span> Liliopsida</label>
						<ul><h5>Ordo</h5>
							<li><input type="checkbox" id="2.1"><label for="2.1"><span class="oi oi-folder"></span> Asparagales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="2.1.1"><label for="2.1.1"><span class="oi oi-folder"></span> Amarylliceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/4"><span class="oi oi-arrow-right"> Amaryllis equestris W.Ait.</a></li>
											<li><a href=""><span class="oi oi-arrow-right"> Crinum asiaticum L</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><input type="checkbox" id="2.2"><label for="2.2"><span class="oi oi-folder"></span> Alismatales</label>
								<ul><h5>Family</h5>
									<li><input type="checkbox" id="2.2.1"><label for="2.2.1"><span class="oi oi-folder"></span> Araceae</label>
										<ul><h5>Species</h5>
											<li><a href="<?=base_url()?>index.php/browse/detail/15"><span class="oi oi-arrow-right"> Alocasia longWoba Miq</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/16"><span class="oi oi-arrow-right"> Colocasia esculenta (L.) Schott.</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/17"><span class="oi oi-arrow-right"> Homalomena cordata Schott.</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/18"><span class="oi oi-arrow-right"> Rhaphidophora foraminifera (Engl.)</a></li>
											<li><a href="<?=base_url()?>index.php/browse/detail/19"><span class="oi oi-arrow-right"> Schismatoglottis calyptrate (Roxb.)Zet</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>


				</div>
			</ul>
		</div>
	</div>

	<!-- Ene Container -->
	</main>
	<footer>
		<p>&copy; Company 2017-2018</p>
	</footer>
	
	


</body>

</html>
