<?php
	require_once('populate_column.php'); //which will load it as a function only...

	$randomize_these_fields = [
		'DURC_northwind_model' => [
			'customer' => [
				'emailAddress' => 'email',
				'businessPhone' => 'phoneNumber',
				'homePhone' => 'phoneNumber',
				'mobilePhone' => 'phoneNumber',
				'faxNumber' => 'phoneNumber',
				'address' => 'streetAddress',
				'zipPostalCode' => 'postcode',
				'webPage' => 'url',
				'notes' => 'latin',
				'attachments' => 'latin',
				'random_date' => 'date',
				'created_at' => 'date',
				'updated_at' => 'date',
			],

			'employee' => [
				'businessPhone' => 'phoneNumber',
				'homePhone' => 'phoneNumber',
				'mobilePhone' => 'phoneNumber',
				'faxNumber' => 'phoneNumber',
				'address' => 'streetAddress',
				'zipPostalCode' => 'postcode',
			],
			'shipper' => [
				'lastName' => 'lastName',
				'firstName' => 'firstName',
				'emailAddress' => 'email',
				'jobTitle' => 'jobTitle',
				'homePhone' => 'phoneNumber',
				'mobilePhone' => 'phoneNumber',
				'faxNumber' => 'phoneNumber',
				'address' => 'streetAddress',
				'zipPostalCode' => 'postcode',
				'webPage' => 'url',
				'notes' => 'latin',
				'attachments' => 'latin',
			],

			'supplier' => [
				'lastName' => 'lastName',
				'firstName' => 'firstName',
				'emailAddress' => 'email',
				'homePhone' => 'phoneNumber',
				'mobilePhone' => 'phoneNumber',
				'faxNumber' => 'phoneNumber',
				'address' => 'streetAddress',
				'zipPostalCode' => 'postcode',
				'webPage' => 'url',
				'notes' => 'latin',
				'attachments' => 'latin',
			],

		],


	];

	foreach($randomize_these_fields as $this_database => $tables){
		foreach($tables as $this_table => $columns){
			foreach($columns as $this_column => $faker_field){
				populate_column($this_database,$this_table,$this_column,$faker_field);
			}
		}
	}
