<?php

// For test payments we want to enable the sandbox mode. If you want to put live
// payments through then this setting needs changing to `false`.
$enableSandbox = true;
require_once 'config.php';
include_once 'dbConnect.php';

// Database settings. Change these for your database configuration.
$dbConfig = [
	'host' => 'localhost',
	'username' => 'root',
	'password' => '',
	'name' => 'ecommerce'
];

// PayPal settings. Change these to your account details and the relevant URLs
// for your site.
$transcode = $this->input->post('code');
$paypalConfig = [
	'email' => 'fashionmerce@mail.com',
	'return_url' => 'http://localhost/ecommerce/page/success',
	'cancel_url' => 'http://localhost/ecommerce/application/views/front/cart/payment-cancelled.php',
	'notify_url' => 'http://example.com/payments.php'
];
$paypalUrl = $enableSandbox ? 'https://www.sandbox.paypal.com/cgi-bin/webscr' : 'https://www.paypal.com/cgi-bin/webscr';

// Product being purchased.

$itemName = $this->input->post('idtrans');
$itemAmount = $this->input->post('bayartotal')/14000;
number_format((float)$itemAmount,2,'.','');

// Include Functions
require 'functions.php';

// Check if paypal request or response
if (!isset($_POST["txn_id"]) && !isset($_POST["txn_type"])) {

	// Grab the post data so that we can set up the query string for PayPal.
	// Ideally we'd use a whitelist here to check nothing is being injected into
	// our post data.
	$data = [];
	foreach ($_POST as $key => $value) {
		$data[$key] = stripslashes($value);
	}

	// Set the PayPal account.
	$data['business'] = $paypalConfig['email'];

	// Set the PayPal return addresses.
	$data['return'] = stripslashes($paypalConfig['return_url']);
	$data['cancel_return'] = stripslashes($paypalConfig['cancel_url']);
	$data['notify_url'] = stripslashes($paypalConfig['notify_url']);

	// Set the details about the product being purchased, including the amount
	// and currency so that these aren't overridden by the form data.
	$data['item_name'] = $itemName;
	$data['amount'] = $itemAmount;
	$data['currency_code'] = 'USD';

	// Add any custom fields for the query string.
	//$data['custom'] = USERID;

	// Build the query string from the data.
	$queryString = http_build_query($data);
	// Redirect to paypal IPN
	header('location:' . $paypalUrl . '?' . $queryString);

	exit();

} else {
	// Handle the PayPal response.

	// Create a connection to the database.
	$db = new mysqli($dbConfig['host'], $dbConfig['username'], $dbConfig['password'], $dbConfig['name']);

	// Assign posted variables to local data array.
	$data = [
		'item_name' => $_POST['item_name'],
		'item_number' => $_POST['item_number'],
		'payment_status' => $_POST['payment_status'],
		'payment_amount' => $_POST['mc_gross'],
		'payment_currency' => $_POST['mc_currency'],
		'txn_id' => $_POST['txn_id'],
		'receiver_email' => $_POST['receiver_email'],
		'payer_email' => $_POST['payer_email'],
		'custom' => $_POST['custom'],
	];


	// We need to verify the transaction comes from PayPal and check we've not
	// already processed the transaction before adding the payment to our
	// database.
	if (verifyTransaction($_POST) && checkTxnid($data['txn_id'])) {
		if (addPayment($data) !== false) {

		}
	}
}