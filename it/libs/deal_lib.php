<?php 
//create_deal Ver 1.0 - 03/07/2016
//create_deal Ver 1.0 - 03/09/2016
//edited the Sql query- 03/11/2016
//added category- 03/29/2016
//include 'core/init.php';
//$errors[] = "we can't find that username";
//getting info from reg page to here

require_once("./core/init.php");
require_once("./_incl_confirm_login.php");
require_once("./login_lib.php");

// added user key field 04/01/2016
$var_user_key=$_SESSION["ukey"];
//added user name field 03/28/2016

$var_user_id = $_SESSION['uid']; 

$var_title = $_SESSION['title'];
$var_description = $_SESSION['description'];
$var_qty = $_SESSION['qty'];
$var_max_order = $_SESSION['max_order']; ////////////////////////////////////////
$var_unit_price = $_SESSION['unit_price'];
$var_unit = $_SESSION['unit'];
$var_uother = $_SESSION['uother'];
$var_category = $_SESSION['category'];
$var_number_discount_option = $_SESSION['number_discount_option'];
$var_number_discount_1 = $_SESSION['number_discount_1'];
$var_amount_discount_1 = $_SESSION['amount_discount_1'];
$var_number_discount_2 = $_SESSION['number_discount_2'];
$var_amount_discount_2 = $_SESSION['amount_discount_2'];
$var_number_discount_3 = $_SESSION['number_discount_3'];
$var_amount_discount_3 = $_SESSION['amount_discount_3'];
$var_time_restricted = $_SESSION['time_restricted'];
$var_start_date = $_SESSION['start_date'];
$var_end_date = $_SESSION['end_date'];
$var_location_restricted = $_SESSION['location_restricted'];
$var_location_description = $_SESSION['location_description'];
$var_shipping_included = $_SESSION['shipping_included'];
$var_shipping_description = $_SESSION['shipping_description'];
$var_datafile = $_SESSION["datafile"];
//$var_datafile = $_FILES["datafile"]["name"];
//$var_datafile_temp = $_FILES["datafile_image"]["name"];

/*
 * Kevin: 03/09/2016
 * Temporarily display variables
 */
echo "===== Temporarily display variables =====<br/>";;
echo "var_title: " . $var_title . "<br/>";
echo "var_user_id: " . $var_user_id. "<br/>";
echo "var_user_key: " .$var_user_key. "</br>";
echo "var_description: " . $var_description . "<br/>";
echo "var_qty: " . $var_qty . "<br/>";
echo "var_max_order: " . $var_max_order . "<br/>"; /////////////////////////
echo "var_unit_price: " . $var_unit_price . "<br/>";
echo "var_unit: " . $var_unit . "<br/>";
echo "var_category: " . $var_category . "<br/>";
echo "var_uother: " . $var_uother . "<br/>";
echo "var_number_discount_option: " . $var_number_discount_option . "<br/>";
echo "var_number_discount_1: " . $var_number_discount_1 . "<br/>";
echo "var_amount_discount_1: " . $var_amount_discount_1 . "<br/>";
echo "var_number_discount_2: " . $var_number_discount_2 . "<br/>";
echo "var_amount_discount_2: " . $var_amount_discount_2 . "<br/>";
echo "var_number_discount_3: " . $var_number_discount_3 . "<br/>";
echo "var_amount_discount_3: " . $var_amount_discount_3 . "<br/>";
echo "var_time_restricted: " . $var_time_restricted . "<br/>";
echo "var_start_date: " . $var_start_date . "<br/>";
echo "var_end_date: " . $var_end_date . "<br/>";
echo "var_location_restricted: " . $var_location_restricted . "<br/>";
echo "var_location_description: " . $var_location_description . "<br/>";
echo "var_shipping_included: " . $var_shipping_included . "<br/>";
echo "var_shipping_description: " . $var_shipping_description . "<br/>";
echo "var_datafile: " . $var_datafile . "<br/>";

// Take care of start and end date
if (($var_time_restricted == "no") ||($var_start_date == "") || ($var_end_date == "")) { // When no time restricted
    // Start date is today
    $var_start_date_db = date('Y-m-d');
    //$var_end_date_db = date('Y-m-d');
    // End date is 30 days from today
    //date_add($var_end_date_db, date_interval_create_from_date_string("30 days"));
    $var_end_date_db = date('Y-m-d', strtotime("+30 days"));
}
else { // When time restricted
    $var_start_date_db = strtotime($var_start_date);
    $var_start_date_db = date('Y-m-d', $var_start_date_db);
    $var_end_date_db = strtotime($var_end_date);
    $var_end_date_db = date('Y-m-d', $var_end_date_db);
}

// Test display
echo "var_start_date_db: " . $var_start_date_db . "<br/>";
echo "var_end_date_db: " . $var_end_date_db . "<br/>";




//inserting into db

//$sql="insert into create_deal(start_date,end_date,user_id,user_name,title,description,deal_category,qty,max_order,unit_price,unit,time_restricted,number_discount_option,number_discount_1,amount_discount_1,number_discount_2,amount_discount_2,number_discount_3,amount_discount_3,location_restricted,location_description,shipping_included,shipping_description,deal_image) values ('$var_start_date_db','$var_end_date_db','$var_user_key','$var_user_id','$var_title','$var_description','$var_category','$var_qty','$var_max_order','$var_unit_price','$var_unit','$var_time_restricted','$var_number_discount_option','$var_number_discount_1','$var_amount_discount_1','$var_number_discount_2','$var_amount_discount_2','$var_number_discount_3','$var_amount_discount_3','$var_location_restricted','$var_location_description','$var_shipping_included','$var_shipping_description','$var_datafile')";
$sql = "
    insert into create_deal(start_date,end_date,user_id,user_name,title,description,deal_category,qty,max_order,unit_price,unit,time_restricted,number_discount_option,number_discount_1,amount_discount_1,number_discount_2,amount_discount_2,number_discount_3,amount_discount_3,location_restricted,location_description,shipping_included,shipping_description,deal_image,deal_closed)
    values ('$var_start_date_db','$var_end_date_db','$var_user_key','$var_user_id','$var_title','$var_description','$var_category','$var_qty','$var_max_order','$var_unit_price','$var_unit','$var_time_restricted','$var_number_discount_option','$var_number_discount_1','$var_amount_discount_1','$var_number_discount_2','$var_amount_discount_2','$var_number_discount_3','$var_amount_discount_3','$var_location_restricted','$var_location_description','$var_shipping_included','$var_shipping_description','$var_datafile',0)
";

if(mysqli_query($con,$sql))
{
echo "<script> alert(\"New record saved successfully..!\")</script>";
mysqli_close($con);
 echo "<script type=\"text/javascript\">window.location.replace(\"../seller_view.php\");</script>";
}
else
{
echo "<script> alert(\"New record not saved successfully..!\")</script>";
mysqli_close($con);
}


?>