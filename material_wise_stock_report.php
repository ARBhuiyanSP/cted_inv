<?php include 'header.php' ?>
<?php if(!check_permission('material-wise-stock-report')){ 
        include("404.php");
        exit();
 } ?>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Stock management Filters</a>
        </li>
        <li class="breadcrumb-item active">Material Wise Stock Report Search</li>
		
    </ol>
    <!-- receive search start here -->
    <?php include 'search/material_wise_stock_report_search.php'; ?>
    <!-- end receive search -->


</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>