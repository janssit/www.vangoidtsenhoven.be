<?php
/**
* @package		Joomla
* @subpackage	Foomu
* @copyright	Copyright (C) 2008 Janss IT services. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
*/

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

class JElementCategory extends JElement
{
	/**
	 * Element name
	 *
	 * @access	protected
	 * @var		string
	 */
	var	$_name = 'Category';

	function fetchElement($name, $value, &$node, $control_name)
	{
		$db = &JFactory::getDBO();

		$query = 'SELECT * '
		. ' FROM #__xopa_categories '
		;
		$db->setQuery( $query );
		$options = $db->loadObjectList( );

		return JHTML::_('select.genericlist',  $options, ''.$control_name.'['.$name.']', 'class="inputbox"', 'id', 'title', $value, $control_name.$name );
	}
}