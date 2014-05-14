<!doctype html>
<html lang = "en">
<head>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css">
<script src ="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src ="<?php echo base_url();?>js/home.js" type="text/javascript"></script>
</head>
<body>

<div id="register_form">

<h1><?php echo lang('change_password_heading');?></h1>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open("auth/change_password");?>

      <p>
            <?php echo lang('change_password_old_password_label', 'old_password');?> <br />
            <?php echo form_input($old_password);?>
      </p>

      <p>
            <label for="new_password"><?php echo sprintf(lang('change_password_new_password_label'), $min_password_length);?></label> <br />
            <?php echo form_input($new_password);?>
      </p>

      <p>
            <?php echo lang('change_password_new_password_confirm_label', 'new_password_confirm');?> <br />
            <?php echo form_input($new_password_confirm);?>
      </p>

      <?php echo form_input($user_id);?>
      <p><?php echo form_submit('submit', lang('change_password_submit_btn'));?></p>

<?php echo form_close();?>

</div></body></html>