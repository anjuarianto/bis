
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- open-iconic-bootstrap (icon set for bootstrap) -->
	  <link rel="stylesheet" href="<?=base_url();?>assets/icon/css/open-iconic-bootstrap.min.css" integrity="sha256-BJ/G+e+y7bQdrYkS2RBTyNfBHpA9IuGaPmf9htub5MQ=" crossorigin="anonymous" />


    <title>Tumbuhan</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=base_url();?>assets/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="<?=base_url();?>"><strong>Baduy</strong>Biodiversity</a>
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="<?=base_url();?>index.php/user/logout">Sign out</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <?php $this->load->view('aside'); ?>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Tumbuhan</h1>
          </div>
          
          <table id="myTable" class="table table-striped table-bordered table-hover">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nama Ilmiah</th>
                  <th>Nama Daerah</th>
                  <th>Gambar</th>
                  <th>Habitat</th>
                  <th>Potensi</th>
                  <th>
                    <?=anchor(	'admin/tambah',
                            'Tambah Data', 
                            ['class'=>'btn btn-primary btn-sm'])
                    ?>
                  </th>         
                </tr>
              </thead>
              <tbody>
                <?php foreach($tumbuhan as $t) : ?>
                <tr>
                  <td><?=$t->id?></td>
                  <td><?=$t->nama_latin?></td>
                  <td><?=$t->nama_daerah?></td>
                  <td><?php
                    $image = [	'src'	=> 'assets/img/gambar/' . $t->gambar,
                              'height'	=> '100'
                              ];
                    echo img($image)
                  ?></td>
                  <td><?=$t->habitat?></td>
                  <td><?=$t->potensi?></td>
                  <td>
                    <div class="tombol-aksi">
                    <?=anchor(	'admin/ubah/'.$t->id,
                              ' Ubah ', 
                              ['class'=>'btn btn-success btn-sm'])
                              
                    ?> <br> <?=anchor(	'admin/hapus/'.$t->id,
                              'Hapus', 
                              ['class'=>'btn btn-danger btn-sm',
                              'onclick'=>'return confirm(\'Apakah Anda Yakin?\')'])

                    ?>
                    </div>
                  </td>
                </tr>
                <?php endforeach; ?>
                
              </tbody>
          </table>

          
          
        </main>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>
    <script>
			$(document).ready(function(){
				$('#myTable').DataTable();
			});
		</script>
  </body>
</html>
