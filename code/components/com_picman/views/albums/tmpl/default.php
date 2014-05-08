<?php // no direct access
defined('_JEXEC') or die('Restricted access');

$Itemid = JRequest::getInt( 'Itemid');
$id = JRequest::getInt( 'id');

?>
<div id="com_picman">

<?php if ( $this->params->get( 'show_page_title', 1 ) ) : ?>
	<div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
		<h2 class="contentheading"><?php echo $this->params->get( 'page_title' ); ?></h2>
	</div>
<?php endif; ?>


<div class="moduletable">
<?php foreach ($this->categories as $category) : ?>
	<h4><?php echo $category->title; ?></h4>

	<ul>
	<?php foreach ($this->items as $item) : ?>

		<?php $link = JRoute::_( 'index.php?option=com_picman&view=album&id=' . $item->slug . '&Itemid=' . $Itemid); ?>

		<?php if($item->catid == $category->id) : ?>
			<li <?php if($item->id == $id) echo 'class="active"'; ?>>
				<a href="<?php echo $link; ?>"><?php echo $item->title; ?></a>
			</li>

		<?php endif; ?>

	<?php endforeach; ?>
	</ul>
<?php endforeach; ?>
</div>
</div>