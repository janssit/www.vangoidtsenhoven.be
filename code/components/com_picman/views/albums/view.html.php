<?php

jimport( 'joomla.application.component.view');

class PicmanViewAlbums extends JView
{
	function display($tpl = null)
	{
		global $mainframe;

		//get the weblink
		$items =& $this->get('data');
		$categories =& $this->get('categories');

		$params = &$mainframe->getParams();
		$this->assignRef( 'params', $params );

		$this->assignRef('items' , $items);
		$this->assignRef('categories' , $categories);

		parent::display($tpl);
	}
}

?>
