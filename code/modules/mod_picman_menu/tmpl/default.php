<?php // no direct access
defined('_JEXEC') or die('Restricted access');

$Itemid = JRequest::getInt( 'Itemid');
$id = JRequest::getInt( 'id');

?>

<?php foreach ($categories as $category) : ?>
	<h4><?php echo $category->title; ?></h4>

	<ul>
	<?php foreach ($list as $item) : ?>

		<?php $link = JRoute::_( 'index.php?option=com_picman&view=album&id=' . $item->slug . '&Itemid=' . $Itemid); ?>

		<?php if($item->catid == $category->id) : ?>
			<li <?php if($item->id == $id) echo 'class="active"'; ?>>
				<a href="<?php echo $link; ?>"><?php echo $item->title; ?></a>
			</li>

		<?php endif; ?>

	<?php endforeach; ?>
	</ul>
<?php endforeach; ?>