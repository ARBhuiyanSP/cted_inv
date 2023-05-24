<?php include 'header.php' ?>
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
.ui-widget-content {
	max-height: 530px; 

}
</style>
<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-body">
            <div class="div-center">
                <div id="item_information">
                    <h3>Material</h3>
                    <div class="row">
                        <div class='col-md-11'>
                            <div class="table-responsive data-table-wrapper">
                                <table id="example" class="table table-condensed table-hover table-bordered site_custome_table">
                                    <thead>
                                        <tr>
                                            <th>Equipment</th>
                                            <th>Equipt.Brand</th>
                                            <th>Mat_Code</th>
                                            <th>Material</th>
                                            <th>Part_no</th>
                                            <th>Specification</th>
                                            <th>Reorder</th>
                                            <th>Unit</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="item_category_body">
                                        <?php
                                        $item_details = getTableDataByTableName('inv_material', '', 'material_description');
                                        if (isset($item_details) && !empty($item_details)) {
                                            foreach ($item_details as $item) {
                                                ?>
                                                <tr>
                                                    <td>
                                                        <?php 
                                                        $dataresult =   getDataRowByTableAndId('inv_materialcategorysub', $item['material_id']);
                                                        echo (isset($dataresult) && !empty($dataresult) ? $dataresult->category_description : '');
                                                        ?>
                                                    </td>
                                                    <td>
                                                        <?php
                                                        $dataresult =   getDataRowByTableAndId('inv_materialcategory', $item['material_sub_id']);
                                                        echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_sub_description : '');
                                                        ?>
                                                    </td>
                                                    <td><?php echo $item['material_id_code']; ?></td>
                                                    <td><?php echo $item['material_description']; ?></td>
                                                    <td><?php echo $item['part_no']; ?></td>
                                                    <td><?php echo $item['spec']; ?></td>
                                                    <td><?php echo $item['material_min_stock']; ?></td>
                                                    <td><?php echo getDataRowByTableAndId('inv_item_unit', $item['qty_unit'])->unit_name; ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-sm" onclick="openMaterialEditForm('<?php echo $item['id']; ?>');">
                                                            <i class="fa fa-edit" aria-hidden="true"></i>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <?php
                                            }
                                        }else{ ?>
                                              <tr>
                                                  <td colspan="7">
                                                        <div class="alert alert-info" role="alert">
                                                            Sorry, no data found!
                                                        </div>
                                                    </td>
                                                </tr>  
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div><!--table-responsive-->
                        </div>
                        <div class='col-md-1'>
                            <button class="btn btn-flat btn-default pull-left" onclick="openModal('item_added_form');"><i class="fa fa-plus"></i> Material</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );

</script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>