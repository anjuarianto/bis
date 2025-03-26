<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?=base_url();?>assets/styles.css" />
    <link rel="stylesheet" href="<?=base_url();?>assets/Google-Style-Login.css" />
    <style>
    .login-card h1 {
        color: #6891a2!important;
    }
    </style>
</head>

<body>
    <div class="login-card">
        <h1 class="text-center">Register!</h1>
        <p class="profile-name-card"></p>
        <?= validation_errors() ?>
        <form action="<?=base_url();?>index.php/user/save" method="post" class="form-signin">
            <input class="form-control" name="nama" type="text" required placeholder="Type Your Username" autofocus id="inputEmail" />
            <input class="form-control" name="username" type="text" required placeholder="Type Your Username" autofocus id="inputEmail" />
            <input class="form-control" name="password" type="password" required placeholder="Type Your Password" id="password" />
            <input class="form-control" name="validation_password" type="password" required placeholder="Retype Your Password" id="confirm_password" />
            <div class="mt-5"></div>
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign Up</button>
            <a class="btn btn-primary btn-block btn-lg back btn-signin " href="<?=base_url();?>">Back</a>
            <div class="text-center text-danger mt-4"><?=$this->session->flashdata('error')?></div>
        </form>
        </div>
</body>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

</html>