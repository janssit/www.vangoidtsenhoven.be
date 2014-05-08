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

jimport('joomla.application.component.controller');

class PicmanController extends JController
{
	function display()
	{

		if(!JRequest::getWord( 'view')) {
			JRequest::setVar('view', 'albums');
		};

		$document =& JFactory::getDocument();

		$viewType	 = $document->getType();

		$viewName	 = JRequest::getWord( 'view', $this->_name );

		$view = & $this->getView($viewName, $viewType);

		parent::display();
	}
}
?>