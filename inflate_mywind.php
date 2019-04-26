<?php

	require_once(__DIR__ . '/util/mysqli.php');
	require_once(__DIR__ . '/vendor/autoload.php');

	if(!isset($argv[1])){
		echo "Usage: inflate_mywind.php {num_purchase_orders}";
		exit(); 
	}
	$loop_for = $argv[1];

	$employee_ids = range(1,9);
	$shipper_ids = range(1,3);


$product_supplier_pair_sql = "
SELECT 
	product.id AS product_id,
    	productName,
    	supplier.id AS supplier_id,
    	supplier.company AS supplier_name
FROM MyWind_northwind_model.product
JOIN MyWind_northwind_model.product_to_supplier ON 
	product_to_supplier.product_id =
    	product.id
JOIN MyWind_northwind_model.supplier ON 
	product_to_supplier.supplier_id =
    	supplier.id
ORDER BY RAND()
LIMIT 0,1
";

	$faker = Faker\Factory::create();


for($i = 0; $i < $loop_for; $i++){

	
	$result = f_mysql_query($product_supplier_pair_sql);



	while($row = mysqli_fetch_assoc($result)){
		$product_id = $row['product_id'];
		$supplier_id = $row['supplier_id'];

		$quantity = rand(1,25) * 5;

		$approve_employee_id = rand(1,4);
		$submit_employee_id = rand(3,9);

		$status_id = 2;
		$taxes = rand(10,35);
		$shippingfee = rand(5,15);
		$paymentAmount = rand(5,15) * 7;		

		$ago = rand(5,365); //days ago
		$createdDate = date('Y-m-d', strtotime( '-' . $ago + rand(1,5)  . ' days'));
		$submittedDate = date('Y-m-d', strtotime( '-' . $ago + rand(5,8)  . ' days'));
		$paymentDate = date('Y-m-d', strtotime( '-' . $ago + rand(4,12)  . ' days'));
		$approvedDate = date('Y-m-d', strtotime( '-' . $ago + rand(8,15)  . ' days'));
		$expectedDate = date('Y-m-d', strtotime( '-' . $ago + rand(15,30)  . ' days'));
		$receivedDate = date('Y-m-d', strtotime( '-' . $ago + rand(15,30)  . ' days'));
	
		$new_purchase_order_sql = "
INSERT INTO MyWind_northwind_data.purchaseOrder 
	(`id`, `supplier_id`, `createdBy_employee_id`, 
	`submittedDate`, `creationDate`, `status_id`, 
	`expectedDate`, `shippingFee`, `taxes`, 
	`paymentDate`, `paymentAmount`, `paymentMethod`, 
	`notes`, `approvedBy_employee_id`, `approvedDate`, 
	`submittedBy_employee_id`) 
VALUES 
	(NULL, '$supplier_id', '$submit_employee_id', 
	'$submittedDate', '$createdDate', '$status_id', 
	'$expectedDate', '$shippingfee', '$taxes', 
	'$paymentDate', '$paymentAmount', 'Credit Card', 
	'no notes', '$approve_employee_id', '$approvedDate', 
	'$submit_employee_id');
";
		echo $new_purchase_order_sql . "\n";

		f_mysql_query($new_purchase_order_sql);

		$purchaseorder_id = f_mysql_insert_id(); //the last insert was the recent purchase order.. 

		$quantity = rand(10,40) * 10;
		$unit_cost = rand(15,45) / 10;


		$new_purchase_order_detail_sql = "
INSERT INTO MyWind_northwind_data.purchaseOrderDetail 
	(`id`, `purchaseOrder_id`, `product_id`, 
	`quantity`, `unitCost`, `dateReceived`, 
	`postedToInventory`, `inventory_id`) 
VALUES 
	(NULL, '$purchaseorder_id', '$product_id', 
	'$quantity', '$unit_cost', '$receivedDate', 
	'0', NULL);
";
		echo $new_purchase_order_detail_sql . "\n";
		f_mysql_query($new_purchase_order_detail_sql);

	}

	//we should have many more orders than purchases..
	//thats what it means to be a middle man.
	$how_many_orders = rand(50,100);
	for($j = 0; $j < $how_many_orders; $j++){
	
		$customer_id = rand(1,29);
		$employee_id = rand(1,9);
		$ship_id = rand(1,3);


		$orderDate = date('Y-m-d', strtotime( '-' . $ago + rand(60,70)  . ' days'));
		$shipDate = date('Y-m-d', strtotime( '-' . $ago + rand(70,80)  . ' days'));
	
		$shipName = esc($faker->name);
		$shipAddress = esc($faker->streetAddress);
		$shipCity = esc($faker->city);
		$shipState = esc($faker->stateAbbr);
		$shipCountryRegion = "'US'";
		$shipZipPostalCode = esc($faker->postcode);
	
		$shippingFee = rand(30,500) / 10;
		$taxes = rand(40,700) /10;
	
		$order_sql = "
INSERT INTO MyWind_northwind_data.order 
	(`id`, `employee_id`, `customer_id`, 
	`orderDate`, `shippedDate`, `shipper_id`, 
	`shipName`, `shipAddress`, `shipCity`, 
	`shipStateProvince`, `shipZipPostalCode`, `shipCountryRegion`, 
	`shippingFee`, `taxes`, `paymentType`, 
	`paidDate`, `notes`, `taxRate`, 
	`taxStatus_id`, `status_id`) 
VALUES 
	(NULL, '$employee_id', '$customer_id', 
	'$orderDate', '$shipDate', '$ship_id', 
	$shipName, $shipAddress, $shipCity, 
	$shipState, $shipZipPostalCode, $shipCountryRegion, 
	'$shippingFee', '$taxes', 'Credit Card', 
	'$orderDate', 'no notes', '.4', 
	'1', '2');
";
		echo '.';
		f_mysql_query($order_sql);

		$order_id = f_mysql_insert_id();

		$quantity = rand(1,7);
		$unit_price = rand(10,20);

		$order_detail_sql = "
INSERT INTO MyWind_northwind_data.orderDetail 
	(`id`, `order_id`, `product_id`, 
	`quantity`, `unitPrice`, `discount`, 
	`status_id`, `dateAllocated`, `PurchaseOrder_id`, 
	`inventory_id`) 
VALUES 
	(NULL, '$order_id', '$product_id', 
	'$quantity', '$unit_price', '0', 
	'2', '$orderDate', '$purchaseorder_id', 
	'0');
";
		f_mysql_query($order_detail_sql);

	}


}//end for loop 

echo "\nall done.\n";

//someday we might want to change how this works.
function esc($string){
	return "'". f_mysql_real_escape_string($string)."'";
}


	
