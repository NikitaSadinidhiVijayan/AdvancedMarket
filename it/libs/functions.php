<?php

// Skip including init.php again if function.php is called in details.lib.php
if (basename($_SERVER['PHP_SELF']) != "details_lib.php" &&
    basename($_SERVER['PHP_SELF']) != "profile_lib.php" &&
    basename($_SERVER['PHP_SELF']) != "register_lib.php" &&
    basename($_SERVER['PHP_SELF']) != "deal_lib.php") {
    require_once("./libs/core/init.php");
}

// get category from the table and display in single_product page

function getcategoryhome()
{
   global $con;
		$var_get_category = "SELECT * FROM category";

		$var_run_category = mysqli_query($con,$var_get_category);
		//echo $run_category;

		while($var_row_category=mysqli_fetch_array($var_run_category))
		{
			$var_category_id=$var_row_category['cat_id'];
			$var_category_title=$var_row_category['category'];
			echo "<li><a href='#'> $var_category_title </a></li>";
		  /* if ($var_category_id == $selected_option) {
				echo "<option value= \"".$var_category_id."\" selected=\"selected\">".$var_category_title."</option>";
			}
			else {
				echo "<option value= \"".$var_category_id."\">".$var_category_title."</option>";
			}*/
		}
}
function getcategory($selected_option)
{
   global $con;
		$var_get_category = "SELECT * FROM category";

		$var_run_category = mysqli_query($con,$var_get_category);
		//echo $run_category;

		while($var_row_category=mysqli_fetch_array($var_run_category))
		{
			$var_category_id=$var_row_category['cat_id'];
			$var_category_title=$var_row_category['category'];
			//echo "<li><a href='#'> $var_category_title </a></li>";
		   if ($var_category_id == $selected_option) {
				echo "<option value= \"".$var_category_id."\" selected=\"selected\">".$var_category_title."</option>";
			}
			else {
				echo "<option value= \"".$var_category_id."\">".$var_category_title."</option>";
			}
		}
}
// To display category choices in the home page and single product page 
function displaycategory()
{
    global $con;
    $var_get_category = "SELECT * FROM category";

    $var_run_category = mysqli_query($con,$var_get_category);
    //echo $run_category;

    while($var_row_category=mysqli_fetch_array($var_run_category))
    {
        $var_category_id=$var_row_category['cat_id'];
        $var_category_title=$var_row_category['category'];
		//echo "<li><a href='#'> $var_category_title </a></li>";
        echo "<li class = 'list'> <a href='index2.php?category=$var_category_id'>$var_category_title </a></li>";
       
    }
}

// To display all the deals in home page
function getdeal()
	{
		if(!isset($_GET['category']))
		{
			global $con;
				
			$var_get_deal = "SELECT * FROM create_deal order by RAND() LIMIT 0,18";
			$var_run_deal = mysqli_query ($con,$var_get_deal);

			$tmp_counter = 0;
			$acc_counter = 0;
			$row_count = mysqli_num_rows($var_run_deal);

			echo "
			<table>
			";

			while($var_row_deal= mysqli_fetch_array($var_run_deal))
			{
					$var_deal_id = $var_row_deal['deal_id']; // deal_id => 1 
					$var_deal_title = $var_row_deal['title'];
					$var_deal_description = $var_row_deal['description'];
					$var_deal_qty = $var_row_deal['qty'];
					$var_deal_unit_price = $var_row_deal['unit_price'];
					$var_deal_unit = $var_row_deal['unit'];
					$var_deal_image = $var_row_deal['deal_image'];

				$acc_counter++;

				$new_row = false;
				$end_row = false;

				if ($tmp_counter % 3 == 0) {
					$new_row = true;
					$tmp_counter = 0;
				}
				if ($tmp_counter % 3 == 2) {
					$end_row = true;
				}

				if ($new_row) {
					echo "<tr><td>";
				}

				echo "
				<div id = 'single_deal'>
					<h3> $var_deal_title </h3>
					<img src = 'images/$var_deal_image' width='200' height='200' />
					<p><h4> $$var_deal_unit_price</h4></p>
					<!-- deal_id is url variable -->
					<a href= 'details.php?deal_url_id=$var_deal_id' style='float:center;'>Details</a>
					
				</div>
				";

				if (($end_row) || ($acc_counter == $row_count)) {
					echo "</td></tr>";
				}

				$tmp_counter++;
			}

			echo "
			</table>
			";
		}

	}
	//<a href= 'join_deal.php?deal_url_id2=$var_deal_id'> <button id= 'button-sp' style = 'float:right'>Join Deal </button> </a>
	
//function to display the deals based on category
function getCatDeal()
	{
		if(isset($_GET['category']))
		{
			global $con;
			$var_cat_id= $_GET['category'];
			
			$var_get_cat_deal = "SELECT * FROM create_deal WHERE deal_category=$var_cat_id";
			$var_run_cat_deal = mysqli_query ($con,$var_get_cat_deal);

			 echo '
            <section class="gst-row row-arrivals woocommerce ovh" id= "newarrival">
                <div class="container theme-container">
                    <div class="gst-column col-lg-12 no-padding text-center">
                        <div class="fancy-heading text-center">
                            <h3><span class="thm-clr">Category</span> Search</h3>
                            <h5 class="funky-font-2">Leading Products</h5>
                        </div>';

				
				while($row = mysqli_fetch_assoc($var_run_cat_deal))
					{
						$deal_url_id=0;
						$var_deal_id=$row["deal_id"];
						echo"<div class='col-md-3 col-sm-6 col-xs-12 isotope-item tab-2 tab-3 tab-5'>";
							echo"<div class='portfolio-wrapper'>";
								echo"<div class='portfolio-thumb'>";
									echo"<img src='images/".$row["deal_image"]."' alt=''>";
										echo"<div class='portfolio-content'>";
											echo"<div class='pop-up-icon'>";
												echo"<a class='left-link' href='single_product.php?deal_url_id=$var_deal_id' data-toggle='modal'><i class='fa fa-search'></i></a>";
												
												echo"<a class='right-link' href='#' value=".$row["deal_id"]."><i class='fa fa-heart'> </i></a>";
											echo "</div>";
										echo "</div>";
								echo "</div>";
								
							// code to single single_product page based on user login
								if (isset($_SESSION["uid"])) 
									{
									echo"<div class='product-content'>";
										echo"<h3> <a class='title-3 fsz-18' href='single_product.php?deal_url_id=$var_deal_id'>".$row["title"]."</a> </h3>";
										echo"<p class='font-2'>Starting from<span class='thm-clr'> $ ".$row["unit_price"]."</span> </p>";  
									echo "</div>";
									}
								else
									{
									echo"<a href='#login-popup' data-toggle='modal'>".$row["title"]."</a>";
									echo "<p class='font-2'>Start from <span class='thm-clr'>$".$row["amount_discount_1"]."</span> </p>";
									}	
																												
							echo "</div>";
						echo "</div>";           				
					}
			
			
				
		
		}
	}

// Close a deal
function closeDeal($check_deal_id)
{
    global $con;

    // Perform only when this deal_id is not closed yet
    if (checkDealClosed($check_deal_id)) { // When already closed
        return true;
    } else { // When not closed yet

        // Set flags
        $is_out_of_stock = false;
        $is_out_of_date = false;

        $var_max_quantity = 0;
        $var_sum_order = 0;

        $var_end_date = "";
        $var_current_time = "";

        ///////////////////////////////////
        // Condition 1: Check out of order
        ///////////////////////////////////

        // Total quantity
        $var_get_deal_id = "
            SELECT *
            FROM create_deal
            WHERE deal_id=" . $check_deal_id;
        $var_run_deal_id = mysqli_query($con, $var_get_deal_id);
        while ($var_row_deal_id = mysqli_fetch_array($var_run_deal_id)) {
            $var_max_quantity = $var_row_deal_id['max_quantity'];
            $var_end_date = $var_row_deal_id['end_date'];
        }

        // Total order
        /*
         * Replaced by soldQuantity(): Kevin 04/21/2016
         *
        $var_get_sum_order = "
            SELECT create_deal_id, SUM(order_quantity) AS sum_order
            FROM join_deal
            GROUP BY create_deal_id";
        $var_run_sum_order = mysqli_query($con, $var_get_sum_order);
        while ($var_row_sum_order = mysqli_fetch_array($var_run_sum_order)) {
            if ($var_row_sum_order['create_deal_id'] == $check_deal_id) {
                $var_sum_order = $var_row_sum_order['sum_order'];
            }
        }
        if($var_sum_order == NULL) {
            $var_sum_order = 0;
        }
        */
        $var_sum_order = soldQuantity($check_deal_id);

        // Out of stock?
        if ($var_max_quantity > $var_sum_order) {
            $is_out_of_stock = false;
        } else {
            $is_out_of_stock = true;
        }

        ///////////////////////////////////
        // Condition 2: Check out of date
        ///////////////////////////////////

        //$var_end_time = date('Y-m-d 00:00:00', strtotime($var_end_date . ' +1 day'));
        $var_end_time = new DateTime($var_end_date.' + 1day');
        $var_current_time = new DateTime("now");

        // Out ot date?
        if ($var_current_time < $var_end_time) {
            $is_out_of_date = false;
        } else {
            $is_out_of_date = true;
        }

        /////////////////////////////////////////////////////////////////////////////
        // Conclusion: either out of stock or out of date, the deal should be closed
        /////////////////////////////////////////////////////////////////////////////
        if ($is_out_of_stock || $is_out_of_date) {
            // Update as the deal closed
            $var_update_deal_id = "
                UPDATE create_deal
                SET deal_closed = 1
                WHERE deal_id=" . $check_deal_id;
            if (mysqli_query($con, $var_update_deal_id)) {
                //echo "<script> alert(\"Update record saved successfully..!\")</script>";
                sendEmail("close", "", $check_deal_id);
            } else {
                echo "<script> alert(\"Update record NOT saved successfully..!\")</script>";
            }
            return true;
        } else {
            return false;
        }
    }
}

// Check whether a deal is closed
function checkDealClosed($check_deal_id) {
    global $con;

    $var_deal_closed = 0;

    $var_get_deal_id = "
        SELECT *
        FROM create_deal
        WHERE deal_id=" . $check_deal_id;
    $var_run_deal_id = mysqli_query($con, $var_get_deal_id);
    while ($var_row_deal_id = mysqli_fetch_array($var_run_deal_id)) {
        $var_deal_closed = $var_row_deal_id['deal_closed'];
    }

    // 0 means not closed
    if ($var_deal_closed == 0) {
        return false;
    }
    else {
        return true;
    }
}

// Check the user already joined the deal
function checkJoinedDeal($check_deal_id, $ukey) {
    global $con;

    $var_order_id = 0;

    $var_get_join_deal = "
        SELECT *
        FROM join_deal
        WHERE create_deal_id=" . $check_deal_id." AND user_id=".$ukey;
    $var_run_join_deal = mysqli_query($con, $var_get_join_deal);
    while ($var_row_join_deal = mysqli_fetch_array($var_run_join_deal)) {
        $var_order_id = $var_row_join_deal['order_id'];
    }

    // 0 means not joined
    if ($var_order_id == 0) {
        return false;
    }
    else {
        return true;
    }
}


// Check sold quantity of a deal
function soldQuantity($check_deal_id) {
    global $con;

    $var_sold_quantity = 0;

    $var_get_sold_quantity = "
            SELECT create_deal_id, SUM(order_quantity) AS sum_order
            FROM join_deal
            GROUP BY create_deal_id";
    $var_run_sold_quantity = mysqli_query($con, $var_get_sold_quantity);
    while ($var_row_sold_quantity = mysqli_fetch_array($var_run_sold_quantity)) {
        if ($var_row_sold_quantity['create_deal_id'] == $check_deal_id) {
            $var_sold_quantity = $var_row_sold_quantity['sum_order'];
        }
    }
    if($var_sold_quantity == NULL) {
        $var_sold_quantity = 0;
    }

    return $var_sold_quantity;
}


// Check sold quantity of a deal
function joinedBuyerNumber($check_deal_id) {
    global $con;

    $var_joined_buyer = 0;

    $var_get_joined_buyer = "
            SELECT create_deal_id, COUNT(*) AS count_buyer
            FROM join_deal
            GROUP BY create_deal_id";
    $var_run_joined_buyer = mysqli_query($con, $var_get_joined_buyer);
    while ($var_row_joined_buyer = mysqli_fetch_array($var_run_joined_buyer)) {
        if ($var_row_joined_buyer['create_deal_id'] == $check_deal_id) {
            $var_joined_buyer = $var_row_joined_buyer['count_buyer'];
        }
    }
    if($var_joined_buyer == NULL) {
        $var_joined_buyer = 0;
    }

    return $var_joined_buyer;
}


// Get current discount price for a deal
function getCurrentPrice($check_deal_id) {
    global $con;

    $var_cur_join = 0;
    $var_cur_price = 0;
    $var_number_discount_1 = 0;
    $var_amount_discount_1 = 0;
    $var_number_discount_2 = 0;
    $var_amount_discount_2 = 0;
    $var_number_discount_3 = 0;
    $var_amount_discount_3 = 0;

    $var_cur_join = soldQuantity($check_deal_id);

    $var_get_deal = "
            SELECT *
            FROM create_deal
            WHERE deal_id=".$check_deal_id;
    $var_run_deal = mysqli_query($con, $var_get_deal);
    while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
        if ($var_row_deal['deal_id'] == $check_deal_id) {
            $var_number_discount_1 = $var_row_deal['number_discount_1'];
            $var_amount_discount_1 = $var_row_deal['amount_discount_1'];
            if ($var_row_deal['number_discount_2'] != "") {
                $var_number_discount_2 = $var_row_deal['number_discount_2'];
                $var_amount_discount_2 = $var_row_deal['amount_discount_2'];
            }
            if ($var_row_deal['number_discount_3'] != "") {
                $var_number_discount_3 = $var_row_deal['number_discount_3'];
                $var_amount_discount_3 = $var_row_deal['amount_discount_3'];
            }
        }
    }

    if ($var_cur_join <= $var_number_discount_1) {
        $var_cur_price = $var_amount_discount_1;
    }

    if ($var_number_discount_2 != "") {
        if (($var_number_discount_1 < $var_cur_join) && ($var_cur_join <= $var_number_discount_2)) {
            $var_cur_price = $var_amount_discount_2;
        }
    }

    if ($var_number_discount_3 != "") {
        if (($var_number_discount_2 < $var_cur_join) && ($var_cur_join <= $var_number_discount_3)) {
            $var_cur_price = $var_amount_discount_3;
        }
    }

    return $var_cur_price;
}


// Get current selling percentage for a deal
function getCurrentPercent($check_deal_id) {
    global $con;

    $var_cur_join = 0;
	$var_max_quantity = 0;
	$var_percent = 0;

    $var_cur_join = soldQuantity($check_deal_id);

    $var_get_deal = "
            SELECT *
            FROM create_deal
            WHERE deal_id=".$check_deal_id;
    $var_run_deal = mysqli_query($con, $var_get_deal);
    while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
        if ($var_row_deal['deal_id'] == $check_deal_id) {
            $var_max_quantity = $var_row_deal['max_quantity'];
        }
    }

	$var_percent = floor($var_cur_join / $var_max_quantity * 100);

    return $var_percent;
}


// Send an email on specific events
/*
 * ===============================================
 * The arguments and events
 * ===============================================
 * "register": when a new user signed up
 * "profile": when a user edit his/her profile
 * "create": when a user created a deal
 * "join": when a user joined a deal
 * "close": when a deal is closed
 * ===============================================
 */
function sendEmail($email_event, $email_to, $deal_id) {
    global $con;

    // Set variables
    $is_OK = true;
    $var_email_headers = "From: Advanced Marketing E-Mail Team (Do Not Reply)";//'From: My Site <'.$emailTo.'>' . "\r\n" . 'Reply-To: ' . $email;
    $var_email_to = ""; //'nikita@binqware.com'; // Put your own email address here
    $var_email_subject = ""; //'Advanced Marketing E-Mail Team';
    $var_email_body = "";//"Name: $name \n\nEmail: $email \n\nSubject: $subject \n\nComments:\n $comments";

    // Check email address
    if ($email_event != "close") {
        if(trim($email_to) == "" && $email_event != "close")  {
            $is_OK = false;
        }
        else if (!filter_var(trim($email_to, FILTER_VALIDATE_EMAIL))) {
            $is_OK = false;
        } else {
            $var_email_to = strtolower(trim($email_to));
        }
    }

    if ($is_OK) {
        switch ($email_event) {
            // when a new user signed up
            case "register":
                $var_email_subject = "Welcome to Advanced Marketing!";
                $var_email_body = "
                    <html>
                    <head>
                        <title>Welcome to Advanced Marketing!</title>
                    </head>
                    <body>
                        <p>Thank you for becoming a member of Advanced Marketing.</p>
                        <p>Please visit <a href='http://www.binqware.com/it/about.php' target='_blank'>here</a> to find out how Advanced Marketing works.</p>
                        <p>If you need more information, please visit our <a href='http://www.binqware.com/it/faq.php' target='_blank'>F.A.Q.</a> page.</p>
                        <p><br/></p>
                        <p>Thanks again for signing up!</p>
                    </body>
                    </html>
                ";
                $var_email_headers .=
                // To send HTML mail, the Content-type header must be set
                $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                // Additional headers
                $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                // Send an email
                if (getEmailStatus($var_email_to)) {
                    mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                }

                break;

            // when a user edit his/her profile
            case "profile":
                $var_email_subject = "You just updated your personal information";
                $var_email_body = "
                    <html>
                    <head>
                        <title>You just updated your personal info</title>
                    </head>
                    <body>
                        <p>Our system indicates that you just updated your personal information.</p>
                        <p>If you did not update your information recently, please <a href='http://www.binqware.com/it/contact-us.php' target='_blank'>contact us</a>.</p>
                        <p><br/></p>
                        <p>Thank you.</p>
                    </body>
                    </html>
                ";
                $var_email_headers .=
                    // To send HTML mail, the Content-type header must be set
                $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                // Additional headers
                $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                // Send an email
                if (getEmailStatus($var_email_to)) {
                    mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                }

                break;

            // when a user created a deal
            case "create":
                $var_deal_id = $deal_id;
                $var_deal_title = "";
                $var_get_deal = "
                    SELECT *
                    FROM create_deal
                    WHERE deal_id=".$deal_id;
                $var_run_deal = mysqli_query($con, $var_get_deal);
                while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
                    if ($var_row_deal['deal_id'] == $deal_id) {
                        $var_deal_title = trim($var_row_deal['title']);
                    }
                }

                $var_email_subject = "You just created a deal";
                $var_email_body = "
                    <html>
                    <head>
                        <title>You just created a deal</title>
                    </head>
                    <body>
                        <p>Our system indicates that you just created a deal.</p>
                        <p>Deal ID: ".$var_deal_id."</p>
                        <p>Deal Title: ".$var_deal_title."</p>
                        <p>We will send you another notification email when this deal is closed.</p>
                        <p><br/></p>
                        <p>Thank you.</p>
                    </body>
                    </html>
                ";

                // To send HTML mail, the Content-type header must be set
                $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                // Additional headers
                $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                // Send an email
                if (getEmailStatus($var_email_to)) {
                    mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                }

                break;

            // when a user joined a deal
            case "join":
                $var_deal_id = $deal_id;
                $var_deal_title = "";
                $var_get_deal = "
                    SELECT *
                    FROM create_deal
                    WHERE deal_id=".$deal_id;
                $var_run_deal = mysqli_query($con, $var_get_deal);
                while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
                    if ($var_row_deal['deal_id'] == $deal_id) {
                        $var_deal_title = trim($var_row_deal['title']);
                    }
                }

                $var_email_subject = "You just joined a deal";
                $var_email_body = "
                    <html>
                    <head>
                        <title>You just joined a deal</title>
                    </head>
                    <body>
                        <p>Our system indicates that you just joined a deal.</p>
                        <p>Deal ID: ".$var_deal_id."</p>
                        <p>Deal Title: ".$var_deal_title."</p>
                        <p>We will send you another notification email when this deal is closed.</p>
                        <p><br/></p>
                        <p>Thank you.</p>
                    </body>
                    </html>
                ";

                // To send HTML mail, the Content-type header must be set
                $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                // Additional headers
                $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                // Send an email
                if (getEmailStatus($var_email_to)) {
                    mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                }

                break;

            // when a deal is closed
            case "close":
                //////////////////////////////////////
                // For seller
                //////////////////////////////////////
                $var_deal_id = $deal_id;
                $var_deal_title = "";
                $var_get_deal = "
                    SELECT *
                    FROM create_deal
                    WHERE deal_id=".$deal_id;
                $var_run_deal = mysqli_query($con, $var_get_deal);
                while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
                    if ($var_row_deal['deal_id'] == $deal_id) {
                        $var_email_to = strtolower(trim($var_row_deal['user_name']));
                        $var_deal_title = trim($var_row_deal['title']);
                    }
                }

                // Assemble buyer's table
                $var_buyer_list = getBuyerList($deal_id);
                $var_buyer_list_table = "";

                foreach ($var_buyer_list as $buyer_id) {

                    $var_buyer_list_id = "";
                    $var_buyer_list_name = "";
                    $var_buyer_list_email = "";
                    $var_buyer_list_address = "";
                    $var_buyer_list_state = "";
                    $var_buyer_list_zipcode = "";
                    $var_buyer_list_quantity = "";

                    $var_get_buyer = "
                        SELECT *
                        FROM register
                        WHERE id=".$buyer_id;
                    $var_run_buyer = mysqli_query($con, $var_get_buyer);
                    while ($var_row_buyer = mysqli_fetch_array($var_run_buyer)) {
                        $var_buyer_list_id = $var_row_buyer['id'];
                        $var_buyer_list_name = $var_row_buyer['first_name'];
                        $var_buyer_list_name .= " ";
                        $var_buyer_list_name .= trim($var_row_buyer['last_name']);
                        $var_buyer_list_email = strtolower(trim($var_row_buyer['email']));
                    }

                    $var_get_join = "
                        SELECT *
                        FROM join_deal
                        WHERE user_id=".$var_buyer_list_id." AND create_deal_id=".$deal_id;
                    $var_run_join = mysqli_query($con, $var_get_join);
                    while ($var_row_join = mysqli_fetch_array($var_run_join)) {
                        $var_buyer_list_address = $var_row_join['address'];
                        $var_buyer_list_state = $var_row_join['state'];
                        $var_buyer_list_zipcode = $var_row_join['zipcode'];
                        $var_buyer_list_quantity = $var_row_join['order_quantity'];
                    }

                    $var_buyer_list_table .= "<tr>";

                    // Name
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_name;
                    $var_buyer_list_table .= "</td>";

                    // Email
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_email;
                    $var_buyer_list_table .= "</td>";

                    // Address
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_address;
                    $var_buyer_list_table .= "</td>";

                    // State
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_state;
                    $var_buyer_list_table .= "</td>";

                    // Zipcode
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_zipcode;
                    $var_buyer_list_table .= "</td>";

                    // Quantity
                    $var_buyer_list_table .= "<td>";
                    $var_buyer_list_table .= $var_buyer_list_quantity;
                    $var_buyer_list_table .= "</td>";

                    $var_buyer_list_table .= "</tr>";
                }

                $var_email_subject = "Your deal just closed successfully";
                $var_email_body = "
                    <html>
                    <head>
                        <title>Your deal just closed successfully</title>
                    </head>
                    <body>
                        <p>Our system indicates that your deal just closed successfully.</p>
                        <p>Deal ID: ".$var_deal_id."</p>
                        <p>Deal Title: ".$var_deal_title."</p>
                        <p><br/></p>
                        <p>Below is the buyer's list of this deal.</p>
                        <p>
                            <table border='1'>
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>State</th>
                                        <th>Zipcode</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>".$var_buyer_list_table."</tbody>
                            </table>
                        </p>
                        <p><br/></p>
                        <p>Thank you.</p>
                    </body>
                    </html>
                ";
                $var_email_headers .=
                    // To send HTML mail, the Content-type header must be set
                $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                // Additional headers
                $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                // Send an email
                if (getEmailStatus($var_email_to)) {
                    mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                }

                //////////////////////////////////////
                // For buyer
                //////////////////////////////////////
                $var_deal_id = $deal_id;
                $var_deal_title = "";
                $var_get_deal = "
                    SELECT *
                    FROM create_deal
                    WHERE deal_id=".$deal_id;
                $var_run_deal = mysqli_query($con, $var_get_deal);
                while ($var_row_deal = mysqli_fetch_array($var_run_deal)) {
                    if ($var_row_deal['deal_id'] == $deal_id) {
                        $var_deal_title = trim($var_row_deal['title']);
                    }
                }

                // Assemble buyer's list
                $var_buyer_list = getBuyerList($deal_id);
                $var_buyer_list_table = "";

                foreach ($var_buyer_list as $buyer_id) {

                    $var_buyer_list_id = "";
                    $var_buyer_list_name = "";
                    $var_buyer_list_email = "";
                    $var_buyer_list_address = "";
                    $var_buyer_list_state = "";
                    $var_buyer_list_zipcode = "";
                    $var_buyer_list_quantity = "";

                    $var_get_buyer = "
                        SELECT *
                        FROM register
                        WHERE id=" . $buyer_id;
                    $var_run_buyer = mysqli_query($con, $var_get_buyer);
                    while ($var_row_buyer = mysqli_fetch_array($var_run_buyer)) {
                        $var_buyer_list_id = $var_row_buyer['id'];
                        $var_buyer_list_name = $var_row_buyer['first_name'];
                        $var_buyer_list_name .= " ";
                        $var_buyer_list_name .= trim($var_row_buyer['last_name']);
                        $var_buyer_list_email = strtolower(trim($var_row_buyer['email']));
                        $var_email_to = $var_buyer_list_email;
                    }

                    $var_get_join = "
                        SELECT *
                        FROM join_deal
                        WHERE user_id=" . $var_buyer_list_id . " AND create_deal_id=" . $deal_id;
                    $var_run_join = mysqli_query($con, $var_get_join);
                    while ($var_row_join = mysqli_fetch_array($var_run_join)) {
                        $var_buyer_list_address = $var_row_join['address'];
                        $var_buyer_list_state = $var_row_join['state'];
                        $var_buyer_list_zipcode = $var_row_join['zipcode'];
                        $var_buyer_list_quantity = $var_row_join['order_quantity'];
                    }

                    $var_email_subject = "Your joined deal is just closed";
                    $var_email_body = "
                        <html>
                        <head>
                            <title>Your joined deal is just closed</title>
                        </head>
                        <body>
                            <p>Our system indicates that one of your joined deals is closed.</p>
                            <p>Deal ID: ".$var_deal_id."</p>
                            <p>Deal Title: ".$var_deal_title."</p>
                            <p><br/></p>
                            <p>Below is your order information.</p>
                            <p>Name: ".$var_buyer_list_name."</p>
                            <p>Address: ".$var_buyer_list_address."</p>
                            <p>State: ".$var_buyer_list_state."</p>
                            <p>Zipcode: ".$var_buyer_list_zipcode."</p>
                            <p>Quantity: ".$var_buyer_list_quantity."</p>
                            <p><br/></p>
                            <p>The seller will contact you soon.</p>
                            <p>Thank you.</p>
                        </body>
                        </html>
                    ";
                    $var_email_headers .=
                        // To send HTML mail, the Content-type header must be set
                    $var_email_headers  = 'MIME-Version: 1.0'.PHP_EOL;
                    $var_email_headers .= 'Content-type: text/html; charset=iso-8859-1'.PHP_EOL;

                    // Additional headers
                    $var_email_headers .= 'To: '.$var_email_to.PHP_EOL;
                    $var_email_headers .= 'From: Advanced Marketing E-Mail Team (Do Not Reply) <donotreply@advancedgroupmarketing.com>'.PHP_EOL;
                    //$var_email_headers .= 'Bcc: ABC <abc@example.com>, EFG <efg@example.com>'.PHP_EOL;

                    // Send an email
                    if (getEmailStatus($var_email_to)) {
                        mail($var_email_to, $var_email_subject, $var_email_body, $var_email_headers);
                    }
                }

                break;

        }
        return true;
    }
    else {
        return false;
    }
}


// Get status of email subscription
function getEmailStatus($user_email) {
    global $con;

    $var_user_email = strtolower(trim($user_email));
    $var_email_status = false;

    $var_get_user = "
            SELECT *
            FROM register
            WHERE email='".$var_user_email."'";
    $var_run_user = mysqli_query($con, $var_get_user);
    while ($var_row_user = mysqli_fetch_array($var_run_user)) {
        if (strtolower(trim($var_row_user['email'])) == $var_user_email) {
            if (strtolower(trim($var_row_user['receive_message'])) == "yes") {
                $var_email_status = true;
            }
            else {
                $var_email_status = false;
            }
        }
    }

    return $var_email_status;
}


// Get buyers list for a deal
function getBuyerList($check_deal_id) {
    global $con;

    $var_buyer_list = array();

    $var_get_joined_buyer = "
            SELECT *
            FROM join_deal
            WHERE create_deal_id=".$check_deal_id;
    $var_run_joined_buyer = mysqli_query($con, $var_get_joined_buyer);
    while ($var_row_joined_buyer = mysqli_fetch_array($var_run_joined_buyer)) {
        $var_buyer_list[] = $var_row_joined_buyer['user_id'];
    }

    return $var_buyer_list;
}


?>