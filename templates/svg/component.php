<?php
/**
 * @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<jdoc:include type="head" />
	<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template_css.css" type="text/css" />
	<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/print.css" type="text/css" />

	<script type="text/javascript" src="/janss/janss.be/site/templates/janss/js/theme.js"></script>	<script type="text/javascript" src="/janss/janss.be/site/templates/janss/js/slimbox.js"></script>	<script type="text/javascript" src="/janss/janss.be/site/templates/janss/js/niftycube.js"></script>	<script type="text/javascript" src="/janss/janss.be/site/templates/janss/js/reflection.js"></script>
</head>
<body class="contentpane">
	<jdoc:include type="message" />
	<jdoc:include type="component" />
</body>
</html>
