<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php JHTML::_('behavior.tooltip'); ?>

<?php
	// Set toolbar items for the page
	$edit		= JRequest::getVar('edit',true);
	$text = !$edit ? JText::_( 'New' ) : JText::_( 'Edit' );
	JToolBarHelper::title(   JText::_( 'Album' ).': <small><small>[ ' . $text.' ]</small></small>' );
	JToolBarHelper::save();
	if (!$edit)  {
		JToolBarHelper::cancel();
	} else {
		// for existing items the button is renamed `close`
		JToolBarHelper::cancel( 'cancel', 'Close' );
	}
	JToolBarHelper::help( 'screen.album.edit' );

	$editor =& JFactory::getEditor();
?>

<script language="javascript" type="text/javascript">
	function submitbutton(pressbutton) {
		var form = document.adminForm;
		if (pressbutton == 'cancel') {
			submitform( pressbutton );
			return;
		}

		// do field validation
		if (form.title.value == ""){
			alert( "<?php echo JText::_( 'Album item must have a title', true ); ?>" );
		} else if (form.username.value == ""){
			alert( "<?php echo JText::_( 'Album item must have a Google username', true ); ?>" );
		} else {
			submitform( pressbutton );
		}
	}
</script>
<style type="text/css">
	table.paramlist td.paramlist_key {
		width: 92px;
		text-align: left;
		height: 30px;
	}
</style>

<form action="index.php" method="post" name="adminForm" id="adminForm">
<div class="col width-50">
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Details' ); ?></legend>

		<table class="admintable">
		<tr>
			<td width="100" align="right" class="key">
				<label for="title">
					<?php echo JText::_( 'Name' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="title" id="title" size="32" maxlength="250" value="<?php echo $this->album->title;?>" />
			</td>
		</tr>
		<tr>
			<td valign="top" align="right" class="key">
				<?php echo JText::_( 'Published' ); ?>:
			</td>
			<td>
				<?php echo $this->lists['published']; ?>
			</td>
		</tr>
		<tr>
			<td valign="top" align="right" class="key">
				<label for="category">
					<?php echo JText::_( 'Category' ); ?>:
				</label>
			</td>
			<td>
				<?php echo $this->lists['catid']; ?>
			</td>
		</tr>
	</table>
	</fieldset>
		<fieldset class="adminform">
		<legend><?php echo JText::_( 'Google Picasa' ); ?></legend>

		<table class="admintable">
		<tr>
			<td valign="top" align="right" class="key">
				<label for="albumid">
					<?php echo JText::_( 'Album' ); ?>:
				</label>
			</td>
			<td>
				<?php if(isset($this->lists['album'])) { echo $this->lists['album']; }
				else { echo JText::_( 'Album can be selected after this item is applyed.' ); } ?>
			</td>
		</tr>
	</table>
	</fieldset>
</div>
<div class="col width-50">
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Description' ); ?></legend>

		<table class="adminform">
					<tr>
						<td>
							<?php
							// parameters : areaname, content, width, height, cols, rows
							echo $editor->display( 'text',  $this->album->introtext , '100%', '400', '75', '20', array('pagebreak') ) ;
							?>
						</td>
					</tr>
				</table>
	</fieldset>
</div>


<div class="clr"></div>
	<input type="hidden" name="option" value="com_picman" />
	<input type="hidden" name="controller" value="album" />
	<input type="hidden" name="username" value="vangoidtsenhoven" />
	<input type="hidden" name="cid[]" value="<?php echo $this->album->id; ?>" />
	<input type="hidden" name="task" value="" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>

