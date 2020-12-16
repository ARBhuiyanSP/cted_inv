<style>
.dtext{
	text-decoration:underline;
}
.linktext{
	font-size:12px;
}

</style>
<div class="card mb-3">
    <div class="card-header">
		<button class="btn btn-info linktext" onclick="window.location.href='stock_report.php';"> Stock Report Search</button>
		<button class="btn btn-info linktext" onclick="window.location.href='material_wise_stock_report.php';"> Categorywise Stock Report </button>
		<button class="btn btn-success linktext"> Materialwise Stock Report </button>
		<button class="btn btn-info linktext" onclick="window.location.href='typewise_stock_report.php';"> Typeywise Stock Report </button>
		<!-- <?php if($_SESSION['logged']['user_type'] !== 'whm') {?>
		<button class="btn btn-info linktext" onclick="window.location.href='total_stock_report.php';"> Total Stock Report</button>
		<button class="btn btn-info linktext" onclick="window.location.href='warehouse_stock_report.php';"> Warehouse Stock Report </button>
		<button class="btn btn-info linktext" onclick="window.location.href='warehouse_categorywise_stock_report.php';"> Warehouse Categorywise Stock Report </button>
		<?php } ?> -->
	</div>

    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr>  
							<td>
                                <div class="form-group">
									<label for="sel1">Material Category:</label>
									<select class="form-control material_select_2" id="material_name" name="material_name" required>
											<?php
											$projectsData = get_product_with_category();
											if (isset($projectsData) && !empty($projectsData)) {
												foreach ($projectsData as $data) {
													if($_GET['material_name'] == $data['item_code']){
														$selected	= 'selected';
														}else{
														$selected	= '';
														}
													?>
													<option value="<?php echo $data['item_code']; ?>" <?php echo $selected; ?>><?php echo $data['material_name']; ?>-<?php echo $data['part_no']; ?>-<?php echo $data['spec']; ?></option>
													<?php
												}
											}
											?>
										</select>
								</div>
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="todate">To Date</label>
                                    <input type="text" class="form-control" id="to_date" name="to_date" value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							<td>
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submit" class="form-control btn btn-primary">Search</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>

<center>
	
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10" id="printableArea">
			<div class="row">
				<div class="col-sm-12">	
					<center>
						<p>
							<img src="images/Saif_Engineering_Logo_165X72.png" height="50px;"/><br>
							<span>Material Stock Report</span><br>
							Till  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th>Parent category</th>
							<th>Sub category</th>
							<th>Material Name</th>
							<th>Unit</th>
							<th>In Stock</th>
						</tr>
					</thead>
					<tbody>
					<?php
					if(isset($_GET['submit'])){
					$material_name=$_GET['material_name'];
					//echo $material_name;
						$material_id_code = $material_name;
						$to_date		=	$_GET['to_date'];
						$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
						
						$sqlmat	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$material_id_code' ";
						$resultmat = mysqli_query($conn, $sqlmat);
						$rowmat=mysqli_fetch_array($resultmat);
											
					?>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					<?php } ?>
					</tbody>
				</table>
				<center><div class="row">
					<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
					<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
				</div></center></br>
				<div class="row">
					<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
						<center><h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5></center>
						
					</div>
				</div>
			</div>			
		</div>
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></center>
		<div class="col-md-1"></div>
</center>
<script>
function printDiv(divName) {
	 var printContents = document.getElementById(divName).innerHTML;
	 var originalContents = document.body.innerHTML;

	 document.body.innerHTML = printContents;

	 window.print();

	 document.body.innerHTML = originalContents;
}
</script>
<script>
    $(function () {
        $("#from_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#to_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
	$(".material_select_2").select2();
</script>


