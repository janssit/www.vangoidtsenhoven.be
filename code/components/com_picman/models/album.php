<?php

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.model' );

class PicmanModelAlbum extends JModel
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

	function &getData()
	{
		// Load the weblink data
		if ($this->_loadData())
		{
			// Initialize some variables
			$user = &JFactory::getUser();

			// Make sure the weblink is published
			if (!$this->_data->published) {
				JError::raiseError(404, JText::_("Resource Not Found"));
				return false;
			}
		}

		return $this->_data;
	}

	function _loadData()
	{

		// Lets load the content if it doesn't already exist
		if (empty($this->_data))
		{
			$query = 'SELECT * ' .
					' FROM #__picman_albums ' .
					' WHERE id = '. (int) $this->_id.
					' AND published = 1';
			$this->_db->setQuery($query);
			$this->_data = $this->_db->loadObject();

			return (boolean) $this->_data;
		}

		return true;
	}

}
