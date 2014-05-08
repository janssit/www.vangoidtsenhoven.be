<?php
/**
* @package		Joomla
* @subpackage	Foomu
* @copyright	Copyright (C) 2008 Janss IT services. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/*
 * This is our main control structure for the component
 *
 * Each view is determined by the $task variable
 */
switch (JRequest::getCmd('task'))
{
	default:
		MachformController::display();
		break;
}

/**
 * Static class to hold controller functions for the Foomu component
 */
class MachformController
{
	function display()
	{
		global $mainframe, $option;

		$document =& JFactory::getDocument();

		$menus	= &JSite::getMenu();
		$menu	= $menus->getActive();

		// Get the page/component configuration
		$params = &$mainframe->getParams();

		//set page title
		$document->setTitle($menu->name);

		require_once (JPATH_COMPONENT.DS.'views'.DS.'machform'.DS.'view.php');
		$view = new MachformViewMachform();

		$view->assignRef('params'  , $params);

		$view->display();
	}
}
?>