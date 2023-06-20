<?php
if (isset($_GET['process_type']) && $_GET['process_type'] == "equipment_wise_issue") {
    session_start();
    date_default_timezone_set("Asia/Dhaka");
    include '../connection/connect.php';
    include '../helper/utilities.php';


    $use_in = $_POST['use_in'] ?? '';
    $sql=" SELECT SUM(round(t1.issue_qty,2)) AS _issue_qty,SUM(round(t1.issue_qty,2)*round(t1.issue_price,2)) AS _total_price,DATE_FORMAT(t1.issue_date, '%m') as _month,DATE_FORMAT(t1.issue_date, '%y') as _year, MONTHNAME(t1.issue_date) as _m_name,t1.use_in
FROM inv_issuedetail AS t1
WHERE (t1.issue_date > now() - INTERVAL 11 month ) ";
if($use_in !=''){
    $sql.=" AND t1.use_in='".$use_in."' ";
    $sql.=" GROUP BY YEAR(t1.issue_date),MONTH(t1.issue_date) ORDER BY YEAR(t1.issue_date),MONTH(t1.issue_date) ASC ";
}else{
    $sql.=" GROUP BY YEAR(t1.issue_date),MONTH(t1.issue_date) ORDER BY YEAR(t1.issue_date),MONTH(t1.issue_date),t1.use_in ASC ";
}


     $equipment_months=[];
    $equipment_amounts=[];
    $equipment_qtys=[];
    $eq_res = mysqli_query($conn, $sql);
    if($eq_res){
        while($row = mysqli_fetch_array($eq_res)){
            $month_and_year=$row["_m_name"]."-".$row["_year"];
            array_push($equipment_months, $month_and_year);
            array_push($equipment_amounts, round($row["_total_price"], 2));
            array_push($equipment_qtys, round($row["_issue_qty"], 2));


        }
    }

    $data=[];
    $series_data =[];
   // $qty_object = {'name'=>'QTY','data'=>$equipment_qtys};
    //$amount_object={'name'=>'Amount','data'=>$equipment_amounts};
    //array_push($series_data, $qty_object);
   // array_push($series_data, $amount_object);


    $data['equipment_months']=$equipment_months;
    $data['equipment_amounts']=$equipment_amounts;
    $data['equipment_qtys']=$equipment_qtys;
    //$data['series_data']=$series_data;

    echo json_encode($data);
   
}
