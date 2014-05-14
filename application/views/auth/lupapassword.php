<!doctype html>
<html lang = "en">
<head>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css">
<script src ="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src ="<?php echo base_url();?>js/home.js" type="text/javascript"></script>
</head>
<body>

<div id="register_form">

<h1><?php echo lang('forgot_password_heading');?></h1>
<p style = "font-family:cursive; color:blue;"><?php echo sprintf(lang('forgot_password_subheading'), $identity_label);?></p>

<div id="infoMessage"></div>

<?php echo form_open("auth/lupapassword");?>

      <p>
      	<?php echo form_input($email, '', 'placeholder="E-mail"');?>
      </p>

      <p><?php echo form_submit('submit', lang('forgot_password_submit_btn'));?></p>

<?php echo form_close();?>
<?php echo $message;?>
</div>
</body></html>