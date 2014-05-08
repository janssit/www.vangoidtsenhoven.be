<?php
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />

<meta name="verify-v1" content="iJKIwttegqHbHLIP1/xdwZ0UwGPZznhXRO0A+Yz7OY8=" />

<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

<script type="text/javascript" src="templates/<?php echo $this->template ?>/addons/theme/js/theme_.js"></script>

<link type="text/css" rel="stylesheet" href="templates/system/css/general.css" />
<link type="text/css" rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template_css.css" />

<!--[if lte IE 6]>
<link href="templates/<?php echo $this->template ?>/css/ieonly/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

<!--[if lte IE 7]>
<link href="templates/<?php echo $this->template ?>/css/ieonly/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>

<body>

<div id="container">
	<div id="frame">
		<div id="header">
			<div id="menu">
			<jdoc:include type="modules" name="mainmenu" style="xhtml" />
			<div class="clear"></div>
		</div>

		</div>

		<div id="body">
			<div id="left">
				<jdoc:include type="modules" name="left" style="xhtml" />
			</div>

			<div id="component">
				<jdoc:include type="component" />
			</div>
		</div>
		<div class="clear"></div>


	</div>
		<div id="footer">
			<div id="copyright">Realisatie van <a target="_blank" href="http://www.janss.be">Janss IT services</a> & <a href="http://www.illuster.be" target="_blank">Illuster</div>
		</div>
</div>

<jdoc:include type="modules" name="debug" />
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-5076231-14");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>