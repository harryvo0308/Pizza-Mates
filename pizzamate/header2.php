	<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="index.php" class="logo-mobile">
				<img src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
				

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">
						<?php if(isset($_SESSION['cart'])) {
							$total = 0;    
                            for($i = 0;  $i < count($_SESSION['cart']); $i++){
                               $query = "SELECT * FROM categories WHERE C_ID = ".$_SESSION['cart'][$i]['id']; 
                                $result = mysqli_query($conn,$query);
                                $row =  mysqli_fetch_assoc($result);                     
                                $total = $total + ($row['C_price'] * $_SESSION['cart'][$i]['count']);
							}
							echo count ($_SESSION['cart']);
							} else 
							echo "0";
						    ?>
                        </span>


						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
                                 <?php
                                if(isset($_SESSION['cart'])){
									
                                    for($i =0; $i < count($_SESSION['cart']); $i++){
                                        $query = "SELECT * FROM categories WHERE C_ID = ".$_SESSION['cart'][$i]['id']; 
                                        $result = mysqli_query($conn,$query);
                                        $row =  mysqli_fetch_assoc($result);                                               
                                ?>
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="<?php echo $row["C_thumb"]; ?>" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="product-detail.php?product_id=<?php echo $row["C_ID"];?>" class="header-cart-item-name">
										<?php echo $row['C_Name']; ?>
										</a>

										<span class="header-cart-item-info">
										<?php echo $_SESSION['cart'][$i]["count"] ?> x $<?php echo $row['C_price']; ?> AUD
										</span>
									</div>
								</li>
                                 <?php       
                                    }
                                }
                                
                            ?>
							</ul>

							<div class="header-cart-total">
								Total: $<?php echo $total; ?>.00 AUD
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
								<form method="post" >
									<button class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4" type ="submit" name="clear">
										Clear Cart
									</button>
								</form>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.php" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu" >
			<nav class="side-menu">
				<ul class="main-menu">
					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<span class="topbar-child1">
							Pizza is life, Pizza is real
						</span>
					</li>

					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<div class="topbar-child2-mobile">
						<?php if(isset($_SESSION["Email"])){?>
							<span class="topbar-email">
								<?php echo $_SESSION["Email"]?>
							</span>
							<form method="post" action="index.php">
							<button type="submit" name="logout" class="btn btn-default btn-sm" >
								<span class="glyphicon glyphicon-log-out"></span> Log out
									</button>
							</form>
						<?php } ?>

							<div class="topbar-language rs1-select2">
								<select class="selection-1" name="time">
									<option>AUD</option>
									<option>USD</option>
								</select>
							</div>
						</div>
					</li>

					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="#" class="topbar-social-item fa fa-facebook"></a>
							<a href="#" class="topbar-social-item fa fa-instagram"></a>
							<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
							<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
							<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
						</div>
					</li>

					<li class="item-menu-mobile">
						<a href="index.php">Home</a>
						
						
					</li>

					<li class="item-menu-mobile">
						<a href="products.php">Menu</a>
					</li>

					<li class="item-menu-mobile">
						<a href="about.php">About</a>
					</li>

					<li class="item-menu-mobile">
						<a href="contact.php">Contact</a>
					</li>
				</ul>
			</nav>
		</div>