<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <link rel="stylesheet" href="<?=base_url();?>assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?=base_url();?>assets/styles.css" />
    <link rel="stylesheet" href="<?=base_url();?>assets/Google-Style-Login.css" />
</head>

<body>
    <div class="login-card"><img src="<?=base_url();?>assets/img/avatar_2x.png" class="profile-img-card" />
        <p class="profile-name-card"> </p>
        <div class="text-center text-danger"><?=$this->session->flashdata('error')?></div>
        <form action="<?=base_url();?>index.php/user/proses" method="post" class="form-signin">
            <input class="form-control" name="username" type="text" required placeholder="Username" autofocus id="inputEmail" />
            <input class="form-control" name="password" type="password" required placeholder="Password" id="inputPassword" />
            <div class="checkbox">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"/>Remember me</label>
                </div>
            </div>
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
            <a class="btn btn-primary btn-block btn-lg back btn-signin " href="<?=base_url();?>">Back</a>
        </form><a href="<?=base_url();?>index.php/user/register" class="forgot-password">Belum Daftar?</a></div>
        <div><?=validation_errors()?></div>
</body>

</html>