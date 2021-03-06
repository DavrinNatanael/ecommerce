<!doctype html>
<html lang="en">
<head>
  <title><?php echo $company_data->company_name; ?> | <?php echo $title; ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- Stripe JavaScript library -->

  <script src="https://js.stripe.com/v2/"></script>
  <!-- jQuery is used only for this example; it isn't required to use Stripe -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <?php if($this->uri->segment('1') == 'produk' and $this->uri->segment('2') != 'katalog' and $this->uri->segment('2') != 'cari_produk'){ ?>
    <!-- Open Graph data -->
    <meta property="og:title" content="<?php echo $produk->judul_produk ?> | <?php echo $company_data->company_name ?>" />
    <meta property="og:type" content="product" />
    <meta property="og:url" content="<?php echo current_url() ?>" />
    <meta property="og:image" content="<?php echo base_url('assets/images/produk/').$produk->foto.$produk->foto_type ?>" />
    <meta property="og:description" content="<?php echo character_limiter($produk->deskripsi, '50') ?>" />
  <?php } ?>
	<!-- core ui -->
	<link href="<?php echo base_url()?>assets/template/frontend/css/theme/simplex.css" rel="stylesheet" type="text/css" />
  <link href="<?php echo base_url()?>assets/template/frontend/css/custom.css" rel="stylesheet">
  <script src="<?php echo base_url()?>assets/template/frontend/js/custom.js" type="text/javascript" rel="stylesheet"></script>
  <script src="<?php echo base_url()?>assets/plugins/jquery/jquery-3.3.1.js" rel="stylesheet"></script>
  <script src="<?php echo base_url()?>assets/template/frontend/js/bootstrap.min.js" rel="stylesheet"></script>
  <script src="<?php echo base_url()?>assets/plugins/datepicker/js/bootstrap-datepicker.js" rel="stylesheet"></script>
  <!-- FontAwesome 4.3.0 -->
  <link href="<?php echo base_url()?>assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="<?php echo base_url()?>assets/plugins/datepicker/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
	<!-- SLIDER -->
	<script src="<?php echo base_url('assets/plugins/slider/slippry-1.4.0/src/')?>slippry.js"></script>
	<link rel="stylesheet" href="<?php echo base_url('assets/plugins/slider/slippry-1.4.0/dist/')?>slippry.css" />
  <!-- dropdown menu plugin -->
	<link href="<?php echo base_url('assets/plugins/cssmenu/') ?>styles.css" rel="stylesheet">
  <script src="<?php echo base_url('assets/plugins/cssmenu/') ?>script.js"></script>
  <!-- Favicon -->
  <link rel="shortcut icon" href="<?php echo base_url() ?>assets/images/fav.png" />
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-114929317-1"></script>
  <!-- Customerly Integration Code -->
  <script>
      window.customerlySettings = {
          app_id: "c1d61075"
      };
      !function(){function e(){var e=t.createElement("script");
      e.type="text/javascript",e.async=!0,
      e.src="https://widget.customerly.io/widget/c1d61075";
      var r=t.getElementsByTagName("script")[0];r.parentNode.insertBefore(e,r)}
      var r=window,t=document,n=function(){n.c(arguments)};
      r.customerly_queue=[],n.c=function(e){r.customerly_queue.push(e)},
      r.customerly=n,r.attachEvent?r.attachEvent("onload",e):r.addEventListener("load",e,!1)}();
  </script>


  <script src="<?php echo base_url('assets/js/') ?>fech.js"></script>

  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-114929317-1');
  </script>
</head>

<body>
