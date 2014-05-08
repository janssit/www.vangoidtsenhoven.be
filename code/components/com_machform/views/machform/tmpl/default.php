<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<?php

$document = &JFactory::getDocument();
$document->addScript( "/site/media/system/js/caption.js" );
$document->addScript( "/site/media/system/js/mootools.js" );

$css = "<link type='text/css' media='screen' rel='stylesheet' href='" . $this->baseurl . "/components/com_machform/themes/default/css/theme.css' />";
$mainframe->addCustomHeadTag($css);

?>
<div id="com_machform">
<script type="text/javascript">
function getElement(aID) {
	return (document.getElementById) ?
	document.getElementById(aID) : document.all[aID];
}

function getIFrameDocument(aID){
	var rv = null;
	var frame=getElement(aID);

	// if contentDocument exists, W3C compliant (e.g. Mozilla)
	if (frame.contentDocument)
		rv = frame.contentDocument;
	else // bad IE  ;)
		rv = document.frames[aID].document;
	return rv;
}

function adjustMyFrameSize() {
	var frame = getElement("machform");
	var frameDoc = getIFrameDocument("machform");
	frame.height = frameDoc.body.offsetHeight;
}
</script>
<div class="contentpane<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
<?php $id = JRequest::getCmd( 'id' ); ?>
<?php if ( $this->params->get( 'show_page_title' ) ) : ?>
	<h2><div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
	<?php echo $this->params->get( 'page_title' ); ?>

	</div></h2>
<?php endif; ?>

<iframe onload="adjustMyFrameSize();" id="machform" allowTransparency="true" frameborder="0" scrolling="no" style="width:100%;border:none" src="machform/embed.php?id=<?php echo $id; ?>" title="Test"><a href="machform/view.php?id=<?php echo $id; ?>" title="<?php echo $this->params->get( 'page_title' ); ?>"><?php echo $this->params->get( 'page_title' ); ?></a></iframe>
</div>
</div>