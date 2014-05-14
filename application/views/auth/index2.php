<!doctype html>
<html lang = "en">
<head>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css">
<script src ="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src ="<?php echo base_url();?>js/home.js" type="text/javascript"></script>
</head>
<body>

<div>
<h2> Ini merupakan halaman User </h2>

<div id="infoMessage"><?php echo $message;?></div>

<table border = "1" cellpadding=0 cellspacing=0>
	<tr>
		<th><?php echo 'Nama';?></th>
		<th><?php echo 'N Keluarga';?></th>
		<th><?php echo 'Email';?></th>
	</tr>
	<?php $query = $this->db->get('users'); ?>
	<?php $query = $this->db->query("SELECT * FROM users WHERE id > 1"); ?>
	<?php foreach ($query->result() as $row) { ?>
		<tr>
			<td><?php echo $row->first_name;?></td>
			<td><?php echo $row->last_name;?></td>
			<td><?php echo $row->email;?></td>
	<?php }?>
		</tr>
</table>

<p>
<?php echo anchor('auth/create_user', 'Ciptakan User Baru')?>
</p>
</div> </body></html>