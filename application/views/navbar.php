<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="padding-left:120px;">
      <a class="navbar-brand" href="<?=base_url();?>"><strong>Baduy</strong>Biodiversity</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
         aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault" style="padding-left:10px;">
         <ul class="navbar-nav mr-auto">
            <li class="nav-item">
               <a class="nav-link" href="<?=base_url();?>index.php/browse"><span class="oi oi-magnifying-glass"></span> Explore</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<?=base_url();?>index.php/taxonomy"><span class="oi oi-magnifying-glass"></span> Taxonomy</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<?=base_url();?>index.php/submissions"><span class="oi oi-magnifying-glass"></span> Submissions</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href=""><span class="oi oi-person"></span> About</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href=""><span class="oi oi-phone"></span> Contact Us</a>
            </li>
            
         </ul>

         <?php if ($this->session->userdata('status') == TRUE) { ?>
            <li class="form-inline my-2 my-lg-0">
            <p class="username" style="color:white;margin:0;padding-right:20px;">Selamat datang <?php echo $this->session->userdata('username'); ?></p>
            </li>
            <li class="form-inline my-2 my-lg-0">
               <a href="<?=base_url();?>index.php/user/logout" class="btn login my-2 my-sm-0 btn-sm mr-2"><strong>Logout</strong></a>
            </li>
         <?php } else { ?>
            <li class="form-inline my-2 my-lg-0">
               <a href="<?=base_url();?>index.php/user/login" class="btn login my-2 my-sm-0 btn-sm mr-2"><strong>Login</strong></a>
               <a href="<?=base_url();?>index.php/user/register" class="btn login my-2 my-sm-0 btn-sm"><strong>Register</strong></a>
            </li>
         <?php } ?>


         
         

      </div>
   </nav>