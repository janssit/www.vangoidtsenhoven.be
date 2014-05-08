<?php

jimport( 'joomla.application.component.view');

class PicmanViewAlbum extends JView
{
	function display($tpl = null)
	{
		global $mainframe;

		//get the weblink
		$row =& $this->get('data');

		$params = &$mainframe->getParams();
		$this->assignRef( 'params', $params );

		$this->assignRef('row' , $row);

		parent::display($tpl);
	}
}

?>
