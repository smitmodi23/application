<?php 
ob_start();
?>

<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <!--====== USEFULL META ======-->
    <?php
	
		include_once("include/meta.php");
		include_once("include/title.php");
		include_once("include/link.php");
		include_once("include/script.php");
		include_once("include/config.php");
  
		
		
		  
   if(isset($_REQUEST['file']))
   {
	   $filename = $_REQUEST['file'];
   }
   else if($_SERVER['QUERY_STRING']=="")
   {
	  header("location:index.php?file=home");
	  exit();
   }
   else
   {
	   header("location:index.php?file=home");
	   exit();
   }
   
   // check file 
   
   
    if(!file_exists(getcwd()."/middle/".$_REQUEST['file'].".php"))
	{
		header("location:index.php?file=404");
	    exit();
	
	}
   
   
 
		
	?>   
    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body class="home-one">

    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!--- PRELOADER -->
    <div class="preeloader">
        <div class="preloader-spinner"></div>
    </div>

    <!--SCROLL TO TOP-->
    <a href="#home" class="scrolltotop"><i class="fa fa-long-arrow-up"></i></a>

    <!--START TOP AREA-->
    <header <?php if($filename=='home') { ?>class="top-area" <?php } else { ?>class="top-area single-page" <?php } ?> id="home">
        <div class="top-area-bg" data-stellar-background-ratio="0.6"></div>
        <div class="header-top-area">
            <!--MAINMENU AREA-->
			 <?php
				include_once("include/menubar.php");	
			 ?> 		  
   
            <!--END MAINMENU AREA END-->
        </div>
        <!--HOME SLIDER AREA-->
		 <?php
		 if($filename == 'home')
		 {
			include_once("include/slider.php");
		 }
		else
		{
			include_once("include/banner.php");
		}
	
		 ?> 		  
   
        <!--END HOME SLIDER AREA-->
    </header>
    <!--END TOP AREA-->

	<!--workspace area start..-->
	
    
    <section class="content">
	  
	
      <?php 
	   
	    include_once("middle/".$filename.".php");
	   
	  ?>
    </section>
    
	
	
	<!--workspace area stop..__>
	
<br/>
<br/>
    <!--FOOER AREA-->
     <?php
		include_once("include/footer.php");	
	 ?> 		  
   
    <!--FOOER AREA END-->


    <!--====== SCRIPTS JS ======-->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>

    <!--====== PLUGINS JS ======-->
    <script src="js/vendor/jquery.easing.1.3.js"></script>
    <script src="js/vendor/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/vendor/jquery.appear.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/stellarnav.min.js"></script>
    <script src="js/contact-form.js"></script>
    <script src="js/jquery.sticky.js"></script>

    <!--===== ACTIVE JS=====-->
    <script src="js/main.js"></script>
</body>

</html>
<?php
 ob_flush();
?>