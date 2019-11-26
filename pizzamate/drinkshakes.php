<?php include 'server.php' ?>
<?php include ('addtocart.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Drinks & Shakes</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
							<?php include'library.php' ?>
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<header class="header1">
		<!-- Header desktop -->
	       <?php include'header1.php' ?>

		<!-- Header Mobile -->
		   <?php include'header2.php' ?>
	</header>

	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/heading-pages-02.jpg);">
		<h2 class="l-text2 t-center">
			Drinks & Shakes
		</h2>
		<p class="m-text13 t-center">
			Drinks & Shakes
		</p>
	</section>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Categories
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="deals.php" class="s-text13">
									Deals
								</a>
							</li>
							
							<li class="p-t-4">
								<a href="pizza.php" class="s-text13">
									Pizza
								</a>
							</li>

							<li class="p-t-4">
								<a href="sides.php" class="s-text13">
									Sides
								</a>
							</li>

							<li class="p-t-4">
								<a href="drinkshakes.php" class="s-text13 active1">
									Drink & Shakes
								</a>
							</li>

							<li class="p-t-4">
								<a href="sandwiches.php" class="s-text13">
									Sandwiches
								</a>
							</li>

							<li class="p-t-4">
								<a href="desserts.php" class="s-text13">
									Desserts
								</a>
							</li>
						</ul>

					</div>
				</div>
                
                <?php
                $sql = "SELECT * FROM drinkshakes";
                $result = mysqli_query($conn,$sql);
                
                if(mysqli_num_rows($result) > 0){
                ?>
				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<span class="s-text8 p-t-5 p-b-5">
							Showing 1 – 4 of 4 results
						</span>
					</div>

					<!-- Product -->
					<div class="row">
					    <?php 
                        while($row = mysqli_fetch_assoc($result)){
                        ?>
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="<?php echo $row["D_image"]; ?>" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											
											<!-- Button -->
											<button onclick="window.location.href='?addcart=<?php echo $row["D_ID"]; ?>' " class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="product-detail.php?product_id=<?php echo $row["D_ID"];?>" class="block2-name dis-block s-text3 p-b-5">
										<?php echo $row["D_Name"];?>
									</a>

									<span class="block2-price m-text6 p-r-5">
										<?php echo "$".$row["D_price"];?>
									</span>
								</div>
							</div>
							
						</div>
					<?php }} ?>
				</div>
			</div>
		</div>
	</section>

						

	<!-- Footer -->
<?php include'footer.php' ?>



	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>

<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/noui/nouislider.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
