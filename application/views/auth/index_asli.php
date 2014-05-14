<h1><?php echo lang('index_heading');?></h1>
<p><?php echo lang('index_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<table border = "1" cellpadding=0 cellspacing=0>
	<tr>
		<th><?php echo 'Nama';?></th>
		<th><?php echo 'N Keluarga';?></th>
		<th><?php echo 'Email';?></th>
		<th><?php echo 'Grup';?></th>
		<th><?php echo 'Status';?></th>
		<th><?php echo 'Aksi';?></th>
	</tr>
	<?php foreach ($users as $user):?>
		<tr>
			<td><?php echo $user->first_name;?></td>
			<td><?php echo $user->last_name;?></td>
			<td><?php echo $user->email;?></td>
			<td>
				<?php foreach ($user->groups as $group):?>
					<?php echo anchor("auth/edit_group/".$group->id, $group->name) ;?><br />
                <?php endforeach?>
			</td>
			<td><?php echo ($user->active) ? 
			anchor("auth/deactivate/".$user->id, 'Aktif') : 
			anchor("auth/activate/". $user->id, 'Tidak Aktif');?></td>
			<td><?php echo anchor("auth/edit_user/".$user->id, 'Setel') ;?></td>
		</tr>
	<?php endforeach;?>
</table>

<p>
<?php echo anchor('auth/create_user', lang('index_create_user_link'))?> | 
<?php echo anchor('auth/create_group', lang('index_create_group_link'))?>
</p>