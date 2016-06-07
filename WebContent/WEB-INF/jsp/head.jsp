<head>
	<title>HAS Computer Science</title>
	<link rel="icon" href="resources/images/favicon.png" type="image/png" />
	<!-- Bootstrap -->
	<link href="resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	 <!--[if lt IE 9]>
	     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	     <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link href='http://fonts.googleapis.com/css?family=Kreon:300,400,700' rel='stylesheet' type='text/css'>
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- start plugins -->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();
			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
	</script>
	<!-- Dropdown menus -->
	<script type="text/javascript" src="resources/js/dropdown.js"></script>
<!----font-Awesome----->
   	<link rel="stylesheet" href="resources/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>