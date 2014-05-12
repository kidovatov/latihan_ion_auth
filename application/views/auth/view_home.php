<!doctype html>
<html lang = "en">
<head> <title> <?php echo $title; ?> </title> 
	<style> 
	body { font-family: cursive; } 
	h3 { color: red; } 
	h4 { color: green; } 
	a { color : blue; } 
	
	.div1 {
	width: 270px;
	background: #AAC4C5;
	border: 1px solid white;
	margin: 100px auto 0;
	padding: 1em;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	text-position: center;
	}
	</style>
</head>

<body div class = "div1">
<h3>Selamat datang di halaman Home Framework Ion Auth</h3>
<h4>silahkan login <?php echo anchor('auth/login', 'disini', 'title="Login"'); ?> </h4>

</body>
</html>