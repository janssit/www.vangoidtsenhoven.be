<?php // @version $Id: default.php 10498 2008-07-04 00:05:36Z ian $
defined('_JEXEC') or die('Restricted access');
?>

<div class="weblinks<?php echo $this->params->get('pageclass_sfx'); ?>">

<?php if ($this->params->get('show_page_title', 1)) : ?>
<h2 class="componentheading<?php echo $this->params->get('pageclass_sfx'); ?>">
	<?php echo $this->escape($this->params->get('page_title')); ?>
</h2>
<?php endif; ?>

	<?php if ( $this->category->image || $this->category->description) : ?>
	<div class="contentdescription<?php echo $this->params->get('pageclass_sfx'); ?>">

		<?php if ($this->category->image) :
			echo $this->category->image;
		endif; ?>

		<?php echo $this->category->description; ?>

		<?php if ($this->category->image) : ?>
		<div class="wrap_image">&nbsp;</div>
		<?php endif; ?>

	</div>
	<?php endif; ?>

	<?php echo $this->loadTemplate('items'); ?>

</div>
