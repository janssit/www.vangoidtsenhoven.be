<?php
/**
* @version		$Id: helper.php 10616 2008-08-06 11:06:39Z hackwar $
* @package		Joomla
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

/// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

class modPicmanMenuHelper
{
	function getList(&$params)
	{
		global $mainframe;

		$db		=& JFactory::getDBO();
		$user	=& JFactory::getUser();

		$count	= intval($params->get('count', 20));
		$contentConfig 	= &JComponentHelper::getParams( 'com_content' );
		$access	= !$contentConfig->get('shownoauth');

		$gid 		= $user->get('aid', 0);
		$now		= date('Y-m-d H:i:s', time() + $mainframe->getCfg('offset') * 60 * 60);
		$nullDate	= $db->getNullDate();


		$query = ' SELECT *, '
			. ' CASE WHEN CHAR_LENGTH(alias) THEN CONCAT_WS(\':\', id, alias) ELSE id END as slug '
			. ' FROM #__picman_albums '
			. ' WHERE published = 1'
			. ' ORDER BY title ASC '
		;
		$db->setQuery($query, 0, $count);
		$rows = $db->loadObjectList();

		return $rows;
	}

	function getCategories()
	{
		global $mainframe;

		$db		=& JFactory::getDBO();
		$user	=& JFactory::getUser();

		$query = ' SELECT DISTINCT category.* '
			. ' FROM #__picman_categories AS category '
			. ' LEFT JOIN #__picman_albums AS album ON album.catid = category.id '
			. ' WHERE album.published = 1 '
			. ' AND category.published = 1 '
		;
		$db->setQuery($query);
		$rows = $db->loadObjectList();

		return $rows;
	}
}
