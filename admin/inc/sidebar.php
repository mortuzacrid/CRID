<?php
	// Total unread email
	$sql = "SELECT id FROM contactus WHERE seen = 0";
	$result = mysqli_query($con,$sql);
  $count_unreademails = mysqli_num_rows($result);

?>



 <div class="list-group">
	<a href="/admin" class="list-group-item active main-color-bg">
	<span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
	</a>
	<a href="/" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Pages <span class="badge">12</span></a>
	<a href="/" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Posts <span class="badge">33</span></a>
	<a href="/" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users <span class="badge">203</span></a>
	<a href="<?php echo SCRIPT_ROOT; ?>/admin/career/career.php" class="list-group-item"><span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span> Career <span class="badge">203</span></a>
	<a href="<?php echo SCRIPT_ROOT; ?>/admin/seeusemail.php" class="list-group-item"><span class="glyphicon glyphicon-bell" aria-hidden="true"></span> Contact Us Email<span class="badge"><?php echo $count_unreademails; ?></span></a>
</div>
