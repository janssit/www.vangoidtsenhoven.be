<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

$mootoolsScript = "<script type='text/javascript' src='" . $this->baseurl . "/media/system/js/mootools.js'></script>";
$jd_gallery = "<script type='text/javascript' src='" . $this->baseurl . "/components/com_picman/libraries/jd_gallery/jd.gallery.js'></script>";
$picasa = "<script type='text/javascript' src='" . $this->baseurl . "/components/com_picman/libraries/picasa/picasa.gallery.js'></script>";
$css = "<link type='text/css' media='screen' rel='stylesheet' href='" . $this->baseurl . "/components/com_picman/themes/default/css/jd.gallery.css' />";

$mainframe->addCustomHeadTag($mootoolsScript);
$mainframe->addCustomHeadTag($picasa);
$mainframe->addCustomHeadTag($jd_gallery);
$mainframe->addCustomHeadTag($css);

$db =& JFactory::getDBO();
$counter = 0;
?>
<h2 class="contentheading"><?php echo $this->row->title; ?></h2>
	<script type="text/javascript">
	    var user = '<?php echo $this->row->username; ?>';
	    var album = '<?php echo $this->row->albumid; ?>';
	    var maxres = 99; // 0 - for all;
	    var authkey = '';

	    var url = 'http://picasaweb.google.com/data/feed/api/user/' + user + '/album/' + album + '?kind=photo&alt=json-in-script&callback=renderer&access=public&start-index=1';

	    if (maxres && maxres != 0) {
	        url = url + '&max-results=' + maxres;
	    }

	    if (authkey && authkey != '') {
	        url = url + '&authkey=' + authkey;
	    }
	    loadJS(url);
	</script>

	<div id="myGallery"></div>
	<div id="details">
		<?php echo $this->row->introtext; ?>
	</div>