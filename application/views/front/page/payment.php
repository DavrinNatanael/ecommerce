<?php
// Include configuration file
require_once 'config.php';

$payment_id = $statusMsg = '';
$ordStatus = 'error';

// Check whether stripe token is not empty
if(!empty($_POST['stripeToken'])){
    // Retrieve stripe token, card and user info from the submitted form data
    $token  = $_POST['stripeToken'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $card_number = $_POST['card_number'];
    $card_exp_month = $_POST['card_exp_month'];
    $card_exp_year = $_POST['card_exp_year'];
    $card_cvc = $_POST['card_cvc'];

    // Include Stripe PHP library
    require_once 'stripe-php/init.php';

    // Set API key
    \Stripe\Stripe::setApiKey(STRIPE_API_KEY);

    // Add customer to stripe
    $customer = \Stripe\Customer::create(array(
        'email' => $email,
        'source'  => $token
    ));

    // Unique order ID
    $orderID = strtoupper(str_replace('.','',uniqid('', true)));

    // Convert price to cents
    $itemPrice = ($itemPrice*100);
    $itemPrice2 = ($itemPrice/100);

    // Charge a credit or a debit card
    $charge = \Stripe\Charge::create(array(
        'customer' => $customer->id,
        'amount'   => $itemPrice,
        'currency' => $currency,
        'description' => $itemName,
        'metadata' => array(
            'order_id' => $orderID
        )
    ));

    // Retrieve charge details
    $chargeJson = $charge->jsonSerialize();

    // Check whether the charge is successful
    if($chargeJson['amount_refunded'] == 0 && empty($chargeJson['failure_code']) && $chargeJson['paid'] == 1 && $chargeJson['captured'] == 1){
        // Order details
        $transactionID = $chargeJson['balance_transaction'];
        $paidAmount = $chargeJson['amount'];
        $paidCurrency = $chargeJson['currency'];
        $payment_status = $chargeJson['status'];

        // Include database connection file
        include_once 'dbConnect.php';

        // Insert tansaction data into the database
        $sql = "INSERT INTO orders(name,email,card_number,card_exp_month,card_exp_year,item_name,item_number,item_price,item_price_currency,paid_amount,paid_amount_currency,txn_id,payment_status,created,modified) VALUES('".$name."','".$email."','".$card_number."','".$card_exp_month."','".$card_exp_year."','".$itemName."','".$itemNumber."','".$itemPrice."','".$currency."','".$paidAmount."','".$paidCurrency."','".$transactionID."','".$payment_status."',NOW(),NOW())";
        $insert = $db->query($sql);
        $payment_id = $db->insert_id;

        // If the order is successful
        if($payment_status == 'succeeded'){
            $ordStatus = 'success';
            $statusMsg = 'Your Payment has been Successful!';
        }else{
            $statusMsg = "Your Payment has Failed!";
        }
    }else{
        //print '<pre>';print_r($chargeJson);
        $statusMsg = "Transaction has been failed!";
    }
}else{
  echo $itemPrice;
    $statusMsg = "Error on form submission.";
}
?>
<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>
<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <ol class="breadcrumb">
    	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
    	  <li class="breadcrumb-item active">proses pembayaran</li>
    	</ol>
    </div>
		<div class="col-sm-12 col-lg-9"><h1>Bayar via Credit Card</h1><hr>
			<div class="row">
        <div class="col-lg-12">
          <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
					<div class="container jumbotron">
					    <div class="status">
					        <?php if(!empty($payment_id)){ ?>
                    <h1 class="<?php echo $ordStatus; ?>"><?php echo $statusMsg; ?></h1>
                    <table class="table table-borderless">
                      <thead>
                        <tr>
                          <th colspan="3" scope="col"><h4>Payment Information</h4></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row"><b>Reference Number</b></th>
                          <td>:</td>
                          <td><?php echo $payment_id; ?></td>
                        </tr>
                        <tr>
                          <th scope="row"><b>Transaction ID</b></th>
                          <td>:</td>
                          <td><?php echo $transactionID; ?></td>
                        </tr>
                        <tr>
                          <th scope="row"><b>Jumlah dibayarkan</b></th>
                          <td>:</td>
                          <td><?php echo $itemPrice2.' '.$paidCurrency; ?></td>
                        </tr>
                        <tr>
                          <th scope="row"><b>Status pembayaran</b></th>
                          <td>:</td>
                          <td><?php echo $payment_status; ?></td>
                        </tr>
                      </tbody>
                      <thead>
                        <tr>
                          <th colspan="3" scope="col"><h4>Product Information</h4></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row"><b>Name</b></th>
                          <td>:</td>
                          <td><?php echo $itemName; ?></td>
                        </tr>
                        <tr>
                          <th scope="row"><b>Price</b></th>
                          <td>:</td>
                          <td><?php echo $itemPrice2.' '.$currency; ?></td>
                        </tr>
                      </tbody>
                    </table>
					        <?php }else{ ?>
					            <h1 class="error">Your Payment has Failed</h1>
					        <?php } ?>
					    </div>
					    <a href="index.php" class="btn-link">Back to Payment Page</a>
					</div>
        </div>
      </div>
		</div>
		<script>
			// Set your publishable key
			Stripe.setPublishableKey('<?php echo STRIPE_PUBLISHABLE_KEY; ?>');

			// Callback to handle the response from stripe
			function stripeResponseHandler(status, response) {
					if (response.error) {
							// Enable the submit button
							$('#payBtn').removeAttr("disabled");
							// Display the errors on the form
							$(".payment-status").html('<p>'+response.error.message+'</p>');
					} else {
							var form$ = $("#paymentFrm");
							// Get token id
							var token = response.id;
							// Insert the token into the form
							form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
							// Submit form to the server
							form$.get(0).submit();
					}
			}

			$(document).ready(function() {
					// On form submit
					$("#paymentFrm").submit(function() {
							// Disable the submit button to prevent repeated clicks
							$('#payBtn').attr("disabled", "disabled");

							// Create single-use token to charge the user
							Stripe.createToken({
									number: $('#card_number').val(),
									exp_month: $('#card_exp_month').val(),
									exp_year: $('#card_exp_year').val(),
									cvc: $('#card_cvc').val()
							}, stripeResponseHandler);

							// Submit from callback
							return false;
					});
			});
			</script>


		<?php $this->load->view('front/sidebar'); ?>
	</div>

  <?php $this->load->view('front/footer'); ?>
