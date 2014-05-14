<h1>Administrator</h1>

<div id="infoMessage"><?php echo $message;?></div>

<table border = "1" cellpadding=0 cellspacing=0>
	<tr>
		<th><?php echo 'Nama';?></th>
		<th><?php echo 'N Keluarga';?></th>
		<th><?php echo 'Email';?></th>
		<th><?php echo 'Grup';?></th>
		<th><?php echo 'Status';?></th>
	</tr>
	<?php $query = $this->db->get('users'); ?>
	<?php $query = $this->db->query("SELECT * FROM users WHERE id = 1"); ?>
	<?php foreach ($query->result() as $row) { ?>
		<tr>
			<td><?php echo $row->first_name;?></td>
			<td><?php echo $row->last_name;?></td>
			<td><?php echo $row->email;?></td>
	<?php }?>
	
	<?php $query2 = $this->db->get('groups'); ?>
	<?php $query2 = $this->db->query("SELECT * FROM groups WHERE id = 1"); ?>
	<?php foreach ($query2->result() as $row) { ?>
			<td><?php echo $row->name;?></td>
	<?php }?>
	
	<?php $query3 = $this->db->get('users'); ?>
	<?php $query3 = $this->db->query("SELECT * FROM users WHERE id = 1"); ?>
	<?php foreach ($query3->result() as $row) { ?>
			<td><?php echo $row->active;?></td>
	<?php }?>
		</tr>
</table>

<p>
<?php echo anchor('auth/create_user', lang('index_create_user_link'))?> | 
<?php echo anchor('auth/create_group', lang('index_create_group_link'))?>
</p>