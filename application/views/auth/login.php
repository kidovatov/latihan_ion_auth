<!doctype html>
<html lang = "en">
<head>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css">
<script src ="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src ="<?php echo base_url();?>js/home.js" type="text/javascript"></script>
</head>
<body>
	<div id = "login_form">
<h1><?php echo lang('login_heading');?></h1>

<div id="infoMessage" style= "color:red;"><?php echo $message;?></div>

<?php echo form_open("auth/login");?>

  <p>
    <?php echo form_input($identity, '',  'placeholder="Your Email"');?>
  </p>

  <p>
    <?php echo form_input($password, '',  'placeholder="Your Password"');?>
  </p>

  <p>
    <?php echo lang('login_remember_label', 'remember');?>
    <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
  </p>


	<?php echo form_submit('submit', lang('login_submit_btn'));?>
	<?php echo anchor('auth/signup', 'Create New Account'); ?>
<?php echo form_close();?>

<a href="forgot_password"><?php echo lang('login_forgot_password');?></a>
</div>
</body></html>