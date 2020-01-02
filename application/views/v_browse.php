<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Baduy Biodiversity | Browse</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
   <script src="main.js"></script>

   <!-- open-iconic-bootstrap (icon set for bootstrap) -->
   <link rel="stylesheet" href="<?=base_url();?>assets/icon/css/open-iconic-bootstrap.min.css" integrity="sha256-BJ/G+e+y7bQdrYkS2RBTyNfBHpA9IuGaPmf9htub5MQ=" crossorigin="anonymous" />

   <!-- Bootstrap -->
   <link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css">

   <!-- User Css -->
   <link rel="stylesheet" href="<?=base_url();?>assets/user.css">

   <!-- Font -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Roboto|Roboto+Condensed" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Thasadith" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
</head>

<body>
<?php $this->load->view('navbar'); ?>

   <main role="main" class="bg-light">

   <!-- Container -->
      <div class="container card-view">

      <form action="<?=base_url();?>index.php/browse/search" method="post">
      <div class="input-group pt-3">
         <input type="text" class="form-control" name="keyword" placeholder="Kata kunci..." aria-label="Recipient's username" aria-describedby="button-addon2">
         <div class="input-group-append" >
            <input class="btn btn-outline-success" type="submit" value="Cari" id="button-addon2" />
         </div>
      </div>
      </form>
      
      
         <div class="row">
            <?php foreach($tumbuhan as $t ) : ?>

            <div class="col-md-3" >
               <a href="<?=base_url();?>index.php/browse/detail/<?=$t->id;?>">
                  <div class="card">
                     <img class="img-canvas img-thumbnail" src="<?=base_url();?>assets/img/gambar/<?=$t->gambar;?>" alt="Card image cap">
                     <div class="card-body">
                        <p class="card-title"><strong><?=$t->nama_daerah?></strong></p>
                        <p class="card-text"><?=$t->nama_latin?></p>
                     </div>
                  </div>
               </a>
            </div>
            <?php endforeach; ?>
               
         </div>
       
       <?php echo $pagination; ?>
       <div style="padding-top: 50px; text-align:center;">
   
       </div>
       
      
         
      </div> <!-- /container -->
      
   </main>

   <footer class="container">
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
</body>

</html>