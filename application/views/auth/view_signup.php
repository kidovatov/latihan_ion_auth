<!doctype html>
<html lang = "en">
<head>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css">
<script src ="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src ="<?php echo base_url();?>js/home.js" type="text/javascript"></script>
</head>
<body>

<div id="register_form">
	<h1> Create an Account! </h1>
	<?php
		echo form_open('auth/create_user');
		echo form_input('first_name', '', 'placeholder="First Name"');
		echo form_input('last_name', '', 'placeholder="Last Name"');
		echo form_input('email', '', 'placeholder="E-mail"');
		echo form_input('phone', '', 'placeholder="Phone Number"');
		echo form_input('company', '', 'placeholder="Company Name"');
		echo form_input('username', '', 'placeholder="Username"');
		echo form_password('password', '', 'placeholder="Password" class="password"');
		echo form_password('password_confirm', '', 'placeholder="Confirm Password" class="password_confirm"');
		echo form_submit('submit', 'Create Account');
	?>
	<?php echo validation_errors('<p style = "color:red;">'); ?>
</div> <!--end register form-->
</body></html>