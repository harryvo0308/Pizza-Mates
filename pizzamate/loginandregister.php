<?php include('server.php'); ?>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Pizza MaTES Sign Up</title>
  <script src="https://use.typekit.net/lkh0ago.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">


      <link rel="stylesheet" href="css/login/style.css">


</head>

<body>

  <main ontouchstart class="with-hover">
	<aside>
		<div></div>
		<svg viewBox="0 0 100 100">

		</svg>
		<div>
			<p id="intro-signup" class="active"><strong>Pizza MaTES</strong> is even better with&nbsp;an&nbsp;account.</p>
			<p id="intro-login">Welcome back to<br/><strong>Pizza MaTES</strong>!</p>
		</div>
	</aside>
	<section>
		<h1>
			<a id="link-signup" class="active">Sign Up</a>
			<a id="link-login">Log In</a>
		</h1>
		<form id="form-signup" action="loginandregister.php" method="post" class="active">
			<div>
				<fieldset>
					<div>
						<label for="name">Name</label>
						<input id="name" name="Name" type="text" placeholder="Pizza Mates"/>
					</div>
				</fieldset>
				<fieldset>
					<div>
						<label for="email">Email</label>
						<input id="email"  name="Email" type="email" placeholder="pizzamate@gmail.com"/>
					</div>
				</fieldset>
				<fieldset>
					<div>
						<label for="password">Password</label>
						<input id="password" name="Password" type="password" placeholder="••••••••"/>
					</div>
				</fieldset>
			</div>
			<input type="submit" name="Signup" value="Sign Up"/>
		</form>
		<form id="form-login" action="loginandregister.php" method="post">
			<div>
				<fieldset>
					<div>
						<label for="email">Email</label>
						<input id="email" name="email" type="email" placeholder="marcia@polo.com"/>
					</div>
				</fieldset>
				<fieldset>
					<div>
						<label for="password">Password</label>
						<input id="password" name="password" type="password" placeholder="••••••••"/>
					</div>
				</fieldset>
			</div>

			<input type="submit" name="Login" value="Log In"/>
		</form>
	</section>
</main>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>



    <script  src="js/login/index.js"></script>




</body>

</html>
