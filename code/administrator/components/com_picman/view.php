<?php
/**
 * @version		$Id$
 * @package		BLOGman
 * @copyright	Copyright (C) 2006 - 2007 Tom Janssens. All rights reserved.
 * @license		GNU/GPL, http://www.gnu.org/copyleft/gpl.html
 * @website 	http://www.joomlablogman.org/
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.view');

class PicmanView extends JView
{
	function __construct($config = array())
	{
		parent::__construct($config);
		JHTML::addIncludePath(JPATH_COMPONENT.DS.'libraries'.DS.'html'.DS.'helper');
	}

	function display($tpl = null)
	{
		parent::display($tpl = null);

		switch($this->getLayout())
		{
			case 'default' :
				$this->_displaySubMenu();
				break;
		}
	}

	function _displaySubMenu()
	{
		$views =  array(
			'albums'	=> JText::_( 'Albums' ),
			'categories'	=> JText::_( 'Categories' ));

		foreach($views as $view => $title)
		{
			$active = $view == $this->_name ? true : false;
			JSubMenuHelper::addEntry(JText::_($title), 'index.php?option=com_picman&view='.$view, $active);
		}
	}
}
?>