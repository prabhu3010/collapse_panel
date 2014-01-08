<?php 
include("config/dbconnect.php"); 
$db=new Database();
$db->connect();	
$branch_sql = "select * from branches";
$branches =$db->process_select_query($branch_sql);
  // print_r($branches);
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/custom.css">
	<script src="js/jquery-1.9.1.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span12 custom-accordion">
				<?php if($branches) { 
					foreach ($branches as $value) {?>
					<p class="toggle-acc branch-head" data-id ="<?php echo $value['id']; ?>	"><i class="icon-plus"></i><?php echo $value['name']; ?></p>
					<?php			
					$account_sql = "select * from accounts where branch_id ='".$value['id']."'";
					$accounts =$db->process_select_query($account_sql);
					?>
					<div class="branch-details">
						<?php if($accounts) { 
							foreach ($accounts as $value_account) {?>
							<p class="toggle-acc account-head" data-id ="<?php echo $value_account['id']; ?>	"><i class="icon-plus"></i><?php echo $value_account['name']; ?><span class="status <?php echo $value_account['status'] == 1 ? 'active' : 'inactive'; ?>"><?php echo $value_account['status'] == 1 ? "Active" : "Inactive"; ?></span></p>
							<?php			
							$acc_type_sql = "select * from acc_types where account_id ='".$value_account['id']."'";
							$acc_types =$db->process_select_query($acc_type_sql);
							?>
							<div class="account-details">
								<table>
									<tr>
										<th>Account Type</th>
										<th>Open Date</th>
									</tr>
									<?php if($acc_types) { 
										foreach ($acc_types as $value_acc_type) {?>

										<tr>
											<td><?php echo $value_acc_type['name']; ?></td>
											<td><?php echo $value_acc_type['created_date']; ?></td>
										</tr>
										<? }
									}?>
								</table>
							</div>
							<? }
						}?>
					</div>
					<? }
				}?>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$(document).on("click",".toggle-acc",function(){
				ele = $(this).find("i");
				$(this).next().fadeToggle("fast",function(){
					ele.attr('class') == 'icon-plus' ? ele.attr('class','icon-minus') : ele.attr('class','icon-plus');
				});
			});

			$(window).load(function(){
				$(".branch-head").each(function(){
					$(this).trigger("click");
					$(this).find("i").attr('class','icon-plus');
				});
				$(".account-head").each(function(){
					$(this).trigger("click");
					$(this).find("i").attr('class','icon-plus');
				});

			});
		});
	</script>
</body>
</html>
