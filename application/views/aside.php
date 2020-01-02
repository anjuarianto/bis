<nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link <?php if ($this->uri->segment('2') == '') {echo 'active';} ?>" href="<?=base_url();?>index.php/admin">
                  <span data-feather="home"></span>
                  Tumbuhan
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php if ($this->uri->segment('2') == 'submissions_data') {echo 'active';} ?>" href="<?=base_url();?>index.php/admin/submissions_data">
                  <span data-feather="file"></span>
                  Pengajuan Data
                </a>
              </li>
              
            </ul>            
          </div>
        </nav>