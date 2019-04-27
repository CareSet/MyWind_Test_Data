<?php

	require_once(__DIR__ . '/util/mysqli.php');
	require_once(__DIR__ . '/vendor/autoload.php');


if($argv[0] == basename(__FILE__)){ //then this script was called from the command line directly... 

	if(!isset($argv[4])){
		echo "Usage: populate_column.php {database} {table} {column} {faker_field}";
		exit(); 
	}
	$database = f_mysql_real_escape_string($argv[1]);
	$table = f_mysql_real_escape_string($argv[2]);
	$column = f_mysql_real_escape_string($argv[3]);
	$faker_field = f_mysql_real_escape_string($argv[4]); //who knows perhaps there will be malicous input to the php code?

	$is_check_with_user = true;

	populate_column($database,$table,$column,$faker_field,$is_check_with_user);

}

function populate_column($database,$table,$column,$faker_field,$is_check_with_user = false){

	
	if(
		strtolower($faker_field) == 'latin' ||
		strtolower($faker_field) == 'lorem' ||
		strtolower($faker_field) == 'ipsum'){

		$faker_field = "paragraph";
	}



	$faker = Faker\Factory::create();

	

	$sql = "
SELECT 

	COUNT(DISTINCT(`id`)) AS distinct_id_count,
	COUNT(*) AS row_count,
 	COUNT(DISTINCT($column)) AS distinct_row_count
FROM $database.$table
";

	$result = f_mysql_query($sql);
	$row = mysqli_fetch_assoc($result);

	$row_count = $row['row_count'];
	$distinct_row_count = $row['distinct_row_count'];
	$distinct_id_count = $row['distinct_id_count'];

	if($distinct_id_count != $row_count){
		echo "ERROR: This script assumes that it can use the id field in $database.$table as a unique identifier to update each field... but it looks like that will not work\n";
		echo "row_count: $row_count distinct_row_count: $distinct_row_count distinct_id_count: $distinct_id_count\n";
		echo "based on the output from \n $sql \n\n ";
		exit();
	}

	$answer = 'yes'; //assume this for when $is_check_with_user = false;

	if($is_check_with_user){
		echo "There are $row_count rows of data and $distinct_row_count distinct values in those data currently living inside $database.$table column $column. \n";
		$answer = readline("Given that, are you sure you want to continue? (needs a 'yes') >");
	}
	if(strtolower($answer) == 'yes'){

		for($i=1; $i<$row_count ; $i++){ //loop over every row of data
			$new_value = f_mysql_real_escape_string($faker->$faker_field);
			$update_sql = "
UPDATE $database.$table
SET $column = '$new_value'
WHERE id = '$i'
";
			echo "adding $new_value\n";
			f_mysql_query($update_sql);

		}


	}
}


//someday we might want to change how this works.
function esc($string){
        return "'". f_mysql_real_escape_string($string)."'";
}
