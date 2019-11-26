 
<?php
 include_once ('server.php');

if(isset($_GET['keyword'])){  
    $keyword =     trim($_GET['keyword']) ;        
    $keyword = mysqli_real_escape_string($conn, $keyword);    
    $query = "SELECT * FROM categories WHERE C_Name LIKE '%$keyword%' or C_price LIKE '%$keyword%' ";
    $result = mysqli_query($conn,$query);


    if($result){
       
        if(mysqli_affected_rows($conn)!=0){  
            
            while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
				$name =$row["C_Name"];
				$image = $row["C_image"];
				$id = $row["C_ID"];
				$price = $row["C_price"];
				
            $textResult = ' <div class="col-sm-12 col-md-6 col-lg-4 p-b-50" >
							<!-- Block -->
							<div class="block2" >
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="'.$image.'" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="https://pizzamates.000webhostapp.com/product-detail.php?product_id='.$id.'" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
										
										</div>
									</div>
								</div>
                                
								<div class="block2-txt p-t-20">
									<a href="https://pizzamates.000webhostapp.com/product-detail.php?product_id='.$id.'" class="block2-name dis-block s-text3 p-b-5">'.$name.'
									</a>

									<span class="block2-price m-text6 p-r-5"> $'.$price.'
									</span>
								</div>
							</div>	
						   </div>';
			echo $textResult;
        }
        }else {
            $textResult =  'Sorry!! We have no product that you are looking as"'.$_GET['keyword'].'"';
			echo $textResult;
        }
    }
}
?>