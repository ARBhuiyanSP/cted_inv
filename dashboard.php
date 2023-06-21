<?php include 'header.php';
$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
 ?>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
table tbody tr{
	background-color:#E9ECEF;
	color:#000;
}
.table th, .table td {
	padding:2px;
}

.highcharts-figure,
.highcharts-data-table table {
    min-width: 310px;
    max-width: 800px;
    margin: 1em auto;
}

#container {
    height: 400px;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #ebebeb;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}

.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

.highcharts-credits{
	display: none !important;
}


</style>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>



<div class="container-fluid">
<!-- Breadcrumbs-->
        <!-- Icon Cards-->
		
        <div class="row">
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlpck	=	"SELECT * FROM `equipments` where `type_id`='47'";
				$resultpck = mysqli_query($conn, $sqlpck);
				$totalPackage = mysqli_num_rows($resultpck);
				?>
                <div class="mr-5"><?php echo $totalPackage; ?> Total RTG</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="equipment_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlpck	=	"SELECT * FROM `equipments` where `type_id`='46'";
				$resultpck = mysqli_query($conn, $sqlpck);
				$totalPackage = mysqli_num_rows($resultpck);
				?>
                <div class="mr-5"><?php echo $totalPackage; ?> Total QGC</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="equipment_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlpck	=	"SELECT * FROM `equipments` where `type_id`='51'";
				$resultpck = mysqli_query($conn, $sqlpck);
				$totalPackage = mysqli_num_rows($resultpck);
				?>
                <div class="mr-5"><?php echo $totalPackage; ?> Total TRAILER</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="equipment_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlpck	=	"SELECT * FROM `equipments` where `type_id`='49'";
				$resultpck = mysqli_query($conn, $sqlpck);
				$totalPackage = mysqli_num_rows($resultpck);
				?>
                <div class="mr-5"><?php echo $totalPackage; ?> Total FLT</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="equipment_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

        </div>
		<div class="row">
			<div class="com-xl-3 col-sm-6 col-md-6">
          		<figure class="highcharts-figure">
				    <div id="container"></div>
				</figure>
			</div>
			<div class="com-xl-3 col-sm-6 col-md-6">
				<?php 

		$used_equipments= "SELECT DISTINCT use_in FROM inv_issuedetail ORDER BY use_in ASC";
		$used_equipment_res = mysqli_query($conn, $used_equipments);
			?>

				<select class="form-control select2 equipment_name js-example-basic-single" name="equipment_name">
					<option value="">Select Equipment</option>
					<?php
					while($row = mysqli_fetch_array($used_equipment_res)){ ?>
						<option value="<?php echo $row['use_in']; ?>"><?php echo $row['use_in']; ?></option>
					<?php } ?>
					
				</select>
          		<figure class="highcharts-figure">
				    <div id="equipmentWiseIssue"></div>
				</figure>
			</div>
		</div>
		

		<div class="row">
			<div class="col-xl-6 col-sm-6 mb-3">

            <div class="card bg-primary o-hidden h-100">
              <div class="card">
							<form name="" action="" method="GET">
								<div class="col-md-12">
									<div class="form-group" style="background-color: #D9272C;color: #fff;">
										<label><b>Material Stock Search</b></label>
										<select class="form-control js-example-basic-single stock_serach_material_name" id="material_name" name="material_name" required>
											<option value="">Select Material</option>
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
													<option
													attr_material_name="<?php echo $data['material_name']; ?>"
													 value="<?php echo $data['item_code']; ?>" <?php echo $selected; ?>><?php echo $data['material_name']; ?>-<?php echo $data['item_code']; ?>-<?php echo $data['part_no']; ?>-<?php echo $data['spec']; ?></option>
													<?php
												}
											}
											?>
										</select>
									</div>
								</div>
								<!-- <div class="col-md-12">
									<div class="form-group">
										<input type="submit" name="name_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="SEARCH" />   
									</div>
								</div> --->
							</form>
							
							
							<div class="col-md-12">
							<h5>Total Stock of <span class="_serach_m_name"></span></h5>
							<table class="table table-bordered">
								<tbody class="port_warehouse_wise_stock">
								
								</tbody>
							</table>
							</div>
							
						</div>
            </div>
          </div>

        
			
          <div class="col-xl-3 col-sm-3 mb-3">

            <div class="card text-white bg-primary o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-truck"></i>
					</div>
				<?php
				
				$sqlpmrr	=	"SELECT * FROM `inv_receive` WHERE `approval_status` = '0'";
				$resultpmrr = mysqli_query($conn, $sqlpmrr);
				$totalPendingMrr = mysqli_num_rows($resultpmrr);
				?>
					<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending Receive</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="receive-list.php">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-3 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-truck"></i>
					</div>
				<?php
				/* if($_SESSION['logged']['user_type'] == 'superAdmin') {
					$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `approval_status` = '0'";	
				}else{
					$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
				} */
				$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `approval_status` = '0'";
				$resultpmrr = mysqli_query($conn, $sqlpmrr);
				$totalPendingMrr = mysqli_num_rows($resultpmrr);
				?>
					<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending Issue</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="issue-list.php">
				<span class="float-left">View Details</span>
				<span class="float-right">
					<i class="fas fa-angle-right"></i>
				</span>
				</a>
            </div>
          </div>
       
		</div>

		<hr>
		


		<?php 

		$montly_reveive= "SELECT round(sum(t2.total_receive)) as _amount,DATE_FORMAT(t1.mrr_date, '%m') as _month,DATE_FORMAT(t1.mrr_date, '%y') as _year, MONTHNAME(t1.mrr_date) as _m_name
FROM inv_receive as t1
INNER JOIN inv_receivedetail AS t2 ON t1.mrr_no=t2.mrr_no
WHERE  (t1.mrr_date > now() - INTERVAL 11 month ) 
GROUP BY YEAR(t1.mrr_date),MONTH(t1.mrr_date) ORDER BY YEAR(t1.mrr_date),MONTH(t1.mrr_date) ASC";

$receive_months=[];
$receive_amounts=[];
$montly_reveive_res = mysqli_query($conn, $montly_reveive);
if($montly_reveive_res){
	while($row = mysqli_fetch_array($montly_reveive_res)){
		$month_and_year=$row["_m_name"]."-".$row["_year"];
		array_push($receive_months, $month_and_year);
		array_push($receive_amounts, round($row["_amount"], 2));
	}
}


		?>
		
		


		
		
		
      </div>

      <script type="text/javascript">


$(".stock_serach_material_name").on('change',function(){
	var material_name = $(this).val();
	var attr_material_name= $('option:selected', this).attr('attr_material_name');
	var url =  baseUrl + "function/chart_ajax.php?process_type=mater_wise_stock_search";
	var data = {material_name}
	$("._serach_m_name").text(attr_material_name);

	$.ajax({
	    url: url,
	    type: "POST",
	    data: data,
	    dataType:'json',
	    success: function(response) {
	        var data = response;
	        var table =``;
	        if(data?.length > 0){
	        	for(var i=0;i<data?.length; i++){
	        	 table +=`<tr><td>${data[i]?.name}</td> <td>${data[i]?.total_stock}</td></tr>`;	
	        	}
	        }else{
	        	table +=`<tr><td><b>No Data Found</b></td></tr>`;	
	        }
	        $(".port_warehouse_wise_stock").html(table)
	       
	    }
	  });
})

     $(function(){

  var receive_months =  <?php echo json_encode($receive_months) ?>;
  var receive_amounts =  <?php echo json_encode($receive_amounts) ?>;

      	Highcharts.chart('container', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: 'Monthly material receive amount report'
		    },
		    subtitle: {
		        text: ''
		    },
		    xAxis: {
		        categories: receive_months,
		        crosshair: true
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: 'Amount Tk'
		        }
		    },

		    tooltip: {
		        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		            '<td style="padding:0"><b>{point.y:.2f} Tk</b></td></tr>',
		        footerFormat: '</table>',
		        shared: true,
		        useHTML: true
		    },
		    plotOptions: {
		        column: {
		            pointPadding: 0.2,
		            borderWidth: 0
		        }
		    },
		    series: [{
		        name: 'Monthly Receive Amount',
		        data: receive_amounts

		    }]
		});

      	})


      	 $(".equipment_name").on('change', function() {
      		var use_in = $(this).val();
      		
      		var url =  baseUrl + "function/chart_ajax.php?process_type=equipment_wise_issue";
      		var data = {use_in};
      		var equipment = use_in;
      		chart_ajax_call(data,url,equipment)
      		
      	})

		$(function(){
			var url =  baseUrl + "function/chart_ajax.php?process_type=equipment_wise_issue";
      		var data = {use_in:''};
      		var equipment = '';
      		chart_ajax_call(data,url,equipment);
		})

      	 function chart_ajax_call(data,url,equipment=''){
			      $.ajax({
			        url: url,
			        type: "POST",
			        data: data,
			        dataType:'json',
			        success: function(response) {
			            console.log(response);
			            var container_id="equipmentWiseIssue";
			            var chart_title = equipment+" Equipment Wise Material Issue";
			            var chart_subtitle='';
			            var am_tk ="Tk";
			            var chart_categories = response.equipment_months;
			            var series_data = response.series_data;
			            var chart_series_data=[
			            		{name:'Qty',data:response.equipment_qtys},
			            		{name:'Amount',data:response.equipment_amounts},
			            			];

			            simple_barchart(container_id,chart_title,chart_subtitle,chart_categories,am_tk,chart_series_data)
			        }
			      });
      	 }


      	 function simple_barchart(container_id,chart_title,chart_subtitle,chart_categories,am_tk,chart_series_data){
      	 	Highcharts.chart(container_id, {
				    chart: {
				        type: 'column'
				    },
				    title: {
				        text: chart_title
				    },
				    subtitle: {
				        text: chart_subtitle
				    },
				    xAxis: {
				        categories:chart_categories ,
				        crosshair: true
				    },
				    yAxis: {
				        min: 0,
				        title: {
				            text: ''
				        }
				    },
				    tooltip: {
				        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
				        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
				            '<td style="padding:0"><b>{point.y:.2f} {am_tk}</b></td></tr>',
				        footerFormat: '</table>',
				        shared: true,
				        useHTML: true
				    },
				    plotOptions: {
				        column: {
				            pointPadding: 0.2,
				            borderWidth: 0
				        }
				    },
				    series: chart_series_data
				});
      	 }
      	
      </script>
      <!-- /.container-fluid -->
<?php include 'footer.php' ?>