<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>
<?php
// Include configuration file
require_once 'config.php';
?>
<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <ol class="breadcrumb">
    	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
    	  <li class="breadcrumb-item active"><?php echo $title ?></li>
    	</ol>
    </div>
		<div class="col-sm-12 col-lg-9"><h1>Bayar via Credit Card</h1><hr>
			<div class="row">
        <div class="col-lg-12">
					<?php if($code==1){ ?>
						<?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
						<div class="panel-heading">

								<!-- Product Info -->
								<p><b>Nama Transaksi:</b> <?php echo $itemName; ?></p>
								<p><b>Total:</b> <?php echo 'Rp.'.$itemPrice.' '; ?></p>
						</div>
						<form action="<?php echo base_url('page/payment/').$customer_data->id_trans; ?>" method="POST" id="paymentFrm">
							<input type="hidden" name="id_trans" id="idtrans" value="<?php echo $customer_data->id_trans; ?>">
							<input type="hidden" name="bayartotal" id="bayartotal" value="<?php echo $itemPrice ?>">
							<div class="form-group has-feedback"><label>Name</label>
								<input class="form-control" type="text" name="name" id="name" placeholder="Enter name" required="" autofocus="">
							</div>
							<div class="form-group has-feedback"><label>Email</label>
								<input class="form-control" type="email" name="email" id="email" placeholder="Enter email" required="">
							</div>
							<div class="form-group has-feedback"><label>Card Number</label>
							<input class="form-control" type="text" value="5200828282828210" name="card_number" id="card_number" placeholder="1234 1234 1234 1234" autocomplete="off" required="">
							</div>
							<label>Expiry date</label>
								<div class="form-row">
									<div class="form-group col-md-6">
										<input class="form-control" type="text" name="card_exp_month" id="card_exp_month" placeholder="MM" required="">
									</div>
									<div class="form-group col-md-6">
										<input class="form-control" type="text" name="card_exp_year" id="card_exp_year" placeholder="YYYY" required="">
									</div>
								</div>
							<div class="form-group has-feedback"><label>CVC Code</label>
								<input class="form-control" type="text" name="card_cvc" id="card_cvc" placeholder="CVC" autocomplete="off" required="">
							</div>
							<button type="submit" class="btn btn-success" id="payBtn">Submit Payment</button>
						</form>
			    <?php } else { ?>
						<?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
						<div class="panel-heading">

								<!-- Product Info -->
								<p><b>Nama Produk:</b> <?php echo $itemName; ?></p>
								<p><b>Total:</b> <?php echo 'Rp.'.$itemPrice.' '; ?></p>
						</div>
						<form action="<?php echo base_url('page/payment/').$idtrans; ?>" method="POST" id="paymentFrm">
							<input type="hidden" name="id_trans" id="idtrans" value="<?php echo $idtrans; ?>">
							<input type="hidden" name="bayartotal" id="bayartotal" value="<?php echo $itemPrice ?>">
							<div class="form-group has-feedback"><label>Name</label>
								<input class="form-control" type="text" name="name" id="name" placeholder="Enter name" required="" autofocus="">
							</div>
							<div class="form-group has-feedback"><label>Email</label>
								<input class="form-control" type="email" name="email" id="email" placeholder="Enter email" required="">
							</div>
							<div class="form-group has-feedback"><label>Card Number</label>
							<input class="form-control" type="text" value="5200828282828210" name="card_number" id="card_number" placeholder="1234 1234 1234 1234" autocomplete="off" required="">
							</div>
							<label>Expiry date</label>
								<div class="form-row">
									<div class="form-group col-md-6">
										<input class="form-control" type="text" name="card_exp_month" id="card_exp_month" placeholder="MM" required="">
									</div>
									<div class="form-group col-md-6">
										<input class="form-control" type="text" name="card_exp_year" id="card_exp_year" placeholder="YYYY" required="">
									</div>
								</div>
							<div class="form-group has-feedback"><label>CVC Code</label>
								<input class="form-control" type="text" name="card_cvc" id="card_cvc" placeholder="CVC" autocomplete="off" required="">
							</div>
							<button type="submit" class="btn btn-success" id="payBtn">Submit Payment</button>
						</form>
			    <?php } ?>
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
