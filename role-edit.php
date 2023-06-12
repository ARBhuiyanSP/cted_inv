<?php 
include 'header.php';
?>

<?php if(!check_permission('role-edit')){ 
        include("404.php");
        exit();
 } ?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"> Role Update</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Role Update Form
			<a href="role-list.php" style="float:right"><i class="fas fa-list"></i> Role List<a>
		</div>

<?php 


$id = $_GET['id'];
$queryRole = "SELECT * FROM `roles` WHERE `id`='$id'";
$resultRole = $conn->query($queryRole);
 $roleData = $resultRole->fetch_object();


$queryPermissions = "SELECT * FROM `permission_role` WHERE `role_id`='$id'";
$resultPermissions = $conn->query($queryPermissions);
$assignPermissions = [];
 while ($row = $resultPermissions->fetch_assoc()) {
                $assignPermissions[] = $row["permission_id"];
}


   
 




?>

        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="role-edit.php?id=<?php echo $id;  ?>" method="post" name="add_name" >
                    <div class="row" id="div1" style="">
						<div class="col-xs-4">
                            <div class="form-group">
                                <label>Role Name</label>
                                <input type="text" name="name" id="name" class="form-control" required value="<?php echo $roleData->name; ?>" >
                                <input type="hidden" name="id" id="name" class="form-control" required value="<?php echo $roleData->id; ?>" >
                                <!-- <input type="hidden" name="role_create" value="role_update"> -->
                            </div>
                        </div>
                         <label>Permissions</label>
                         <?php

                                    $rearrange = [];
                                    $permissionData = getTableDataByTableName('permissions');
                                    ;
                                    if (isset($permissionData) && !empty($permissionData)) {
                                        foreach ($permissionData as $data) {
                                                $rearrange[$data["permission_category"]][]=$data;
                                           
                                        }
                                    }
                                    ?>
                        <div class="col-xs-12">
                           <?PHP 
                             foreach ($rearrange as $key=> $data) {
                                ?>
                                <div class="col-md-12"><h3><?php echo $key; ?></h3></div>
                                
                                <?php
                                foreach($data as $key_val){ ?>
                                    <div class="col-xs-4">
                                        <div class="d-flex">
                                            <input id="<?php echo $key_val['id']; ?>" type="checkbox" name="permissions[]"  value="<?php echo $key_val['id']; ?>" style="width: 24px;height: 24px;" <?php if(in_array($key_val['id'], $assignPermissions)){echo 'checked';} ?> >
                                            <label for="<?php echo $key_val['id']; ?>" ><?php echo $key_val["display_name"]; ?></label>
                                        </div>
                                    </div>
                                 
                            <?php     }     } ?>
                               
                                
                            
                        </div>
						<div class="col-xs-4">
                            <div class="form-group">
								<label>.</label>
                                <input type="submit" name="role_update" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!--here your code will go-->
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>