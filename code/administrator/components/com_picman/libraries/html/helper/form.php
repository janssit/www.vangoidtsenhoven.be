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

class JHTMLForm
{
  	function category($name, $option, $selected, $javascript)
 	{
		$db = JFactory::getDBO();

		// Build QUERY
		$query = ' SELECT * FROM #__picman_categories ';

		$db->setQuery($query);
		$items = $db->loadAssocList('id');

		// Build Category list
		$list[] = JHTML::_('select.option', '','- ' .JText::_( 'Select Category' ). ' -', 'id', 'title' );
		$list = array_merge( $list, $items );

		// build the HTML list
		return JHTML::_('select.genericlist', $list, $name, $javascript, 'id', 'title', $selected, '' );
 	}

 	 /**
	 * Displays a hidden token field to reduce the risk of CSRF exploits
	 *
	 * Use in conjuction with JRequest::checkToken
	 *
	 * @static
	 * @return	void
	 * @since	1.5
	 */
	function token()
	{
		return '<input type="hidden" name="'.JUtility::getToken().'" value="1" />';
	}

}
?>
