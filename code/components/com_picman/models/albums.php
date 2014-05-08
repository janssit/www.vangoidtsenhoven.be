<?php

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.model' );

class PicmanModelAlbums extends JModel
{
		/**
	 * Weblink id
	 *
	 * @var int
	 */
	var $_id = null;

	/**
	 * Weblink data
	 *
	 * @var array
	 */
	var $_data = null;

	/**
	 * Constructor
	 *
	 * @since 1.5
	 */
	function __construct()
	{
		parent::__construct();

		$id = JRequest::getVar('id', 0, '', '');
		$this->setId($id);
	}

	/**
	 * Method to set the weblink identifier
	 *
	 * @access	public
	 * @param	int Weblink identifier
	 */
	function setId($id)
	{
		// Set weblink id and wipe data
		$this->_id		= $id;
		$this->_data	= null;
	}

	function getData()
	{
		global $mainframe;

		$db		=& JFactory::getDBO();
		$user	=& JFactory::getUser();

		$query = ' SELECT *, '
			. ' CASE WHEN CHAR_LENGTH(alias) THEN CONCAT_WS(\':\', id, alias) ELSE id END as slug '
			. ' FROM #__picman_albums '
			. ' WHERE published = 1 '
			. ' ORDER BY title ASC '
		;
		$db->setQuery($query);
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
