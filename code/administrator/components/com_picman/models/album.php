<?php
/**
 * @version		$Id: album.php 10094 2008-03-02 04:35:10Z instance $
 * @package		Joomla
 * @subpackage	Content
 * @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant to the
 * GNU General Public License, and as distributed it includes or is derivative
 * of works licensed under the GNU General Public License or other free or open
 * source software licenses. See COPYRIGHT.php for copyright notices and
 * details.
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die( 'Restricted access' );

jimport('joomla.application.component.model');

/**
 * Picman Component Album Model
 *
 * @package		Joomla
 * @subpackage	Picman
 * @since 1.5
 */
class PicmanModelAlbum extends JModel
{
	/**
	 * Album id
	 *
	 * @var int
	 */
	var $_id = null;

	/**
	 * Album data
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

		$array = JRequest::getVar('cid', array(0), '', 'array');
		$edit	= JRequest::getVar('edit',true);
		if($edit)
			$this->setId((int)$array[0]);
	}

	/**
	 * Method to set the album identifier
	 *
	 * @access	public
	 * @param	int Album identifier
	 */
	function setId($id)
	{
		// Set album id and wipe data
		$this->_id		= $id;
		$this->_data	= null;
	}

	/**
	 * Method to get a album
	 *
	 * @since 1.5
	 */
	function &getData()
	{
		// Load the album data
		if ($this->_loadData())
		{
			// Initialize some variables
			$user = &JFactory::getUser();
		}
		else  $this->_initData();

		return $this->_data;
	}

	/**
	 * Tests if album is checked out
	 *
	 * @access	public
	 * @param	int	A user id
	 * @return	boolean	True if checked out
	 * @since	1.5
	 */
	function isCheckedOut( $uid=0 )
	{
		if ($this->_loadData())
		{
			if ($uid) {
				return ($this->_data->checked_out && $this->_data->checked_out != $uid);
			} else {
				return $this->_data->checked_out;
			}
		}
	}

	/**
	 * Method to checkin/unlock the album
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function checkin()
	{
		if ($this->_id)
		{
			$album = & $this->getTable();
			if(! $album->checkin($this->_id)) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}
		return false;
	}

	/**
	 * Method to checkout/lock the album
	 *
	 * @access	public
	 * @param	int	$uid	User ID of the user checking the article out
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function checkout($uid = null)
	{
		if ($this->_id)
		{
			// Make sure we have a user id to checkout the article with
			if (is_null($uid)) {
				$user	=& JFactory::getUser();
				$uid	= $user->get('id');
			}
			// Lets get to it and checkout the thing...
			$album = & $this->getTable();
			if(!$album->checkout($uid, $this->_id)) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}

			return true;
		}
		return false;
	}

	/**
	 * Method to store the album
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function store($data)
	{
		$row =& $this->getTable();

		// Bind the form fields to the web link table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Make sure the web link table is valid
		$check = $this->checkUsername($row->username);
		if ($check == NULL) {
			$this->setError(JText::_('Your Album must contain a title.'));
		}

		// Make sure the web link table is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the web link table to the database
		if (!$row->store()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		return true;
	}

	/**
	 * Method to remove a album
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function delete($cid = array())
	{
		$result = false;

		if (count( $cid ))
		{
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );
			$query = 'DELETE FROM #__picman_albums'
				. ' WHERE id IN ( '.$cids.' )';
			$this->_db->setQuery( $query );
			if(!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}

		return true;
	}

	/**
	 * Method to (un)publish a album
	 *
	 * @access	public
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function publish($cid = array(), $publish = 1)
	{
		$user 	=& JFactory::getUser();

		if (count( $cid ))
		{
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );

			$query = 'UPDATE #__picman_albums'
				. ' SET published = '.(int) $publish
				. ' WHERE id IN ( '.$cids.' )'
				. ' AND ( checked_out = 0 OR ( checked_out = '.(int) $user->get('id').' ) )'
			;
			$this->_db->setQuery( $query );
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}

		return true;
	}

	/**
	 * Method to load content album data
	 *
	 * @access	private
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function _loadData()
	{
		// Lets load the content if it doesn't already exist
		if (empty($this->_data))
		{
			$query = 'SELECT w.* '.
					' FROM #__picman_albums AS w' .
					' WHERE w.id = '.(int) $this->_id;
			$this->_db->setQuery($query);
			$this->_data = $this->_db->loadObject();
			return (boolean) $this->_data;
		}
		return true;
	}

	/**
	 * Method to initialise the album data
	 *
	 * @access	private
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	function _initData()
	{
		// Lets load the content if it doesn't already exist
		if (empty($this->_data))
		{
			$album = new stdClass();
			$album->id					= 0;
			$album->username			= 'vangoidtsenhoven';
			$album->catid				= 0;
			$album->albumid				= 0;
			$album->title				= null;
			$album->alias               = null;
			$album->description			= null;
			$album->date				= null;
			$album->hits				= 0;
			$album->published			= 0;
			$album->checked_out			= 0;
			$album->checked_out_time	= 0;
			$this->_data				= $album;
			return (boolean) $this->_data;
		}
		return true;
	}

	function loadZendClasses()
	{
		global $mainframe;

		$absolute_path = $mainframe->getCfg( 'absolute_path' );

		ini_set("include_path", ini_get("include_path") . PATH_SEPARATOR . JPATH_COMPONENT . DS . 'libraries');

		require_once('Zend' . DS . 'Loader.php');

		Zend_Loader::loadClass('Zend_Gdata_Photos');
		Zend_Loader::loadClass('Zend_Gdata_Photos_UserQuery');
		Zend_Loader::loadClass('Zend_Gdata_Photos_AlbumQuery');
		Zend_Loader::loadClass('Zend_Gdata_Photos_PhotoQuery');
	}

	function getService()
	{
		// Singleton Pattern
		if (!isset($service))
			$service = new Zend_Gdata_Photos();
		return $service;
	}

	function getPicasaUsername()
	{
		global $mainframe;

		$query = 	'SELECT w.username'.
					' FROM #__picman_albums AS w' .
					' WHERE w.id = '.(int) $this->_id;
			$this->_db->setQuery($query);
			$picasaUsername = $this->_db->loadResult();

		return $picasaUsername;
	}

	function getMaxPhotosPerPage()
	{
		global $mainframe;
		$params = &$mainframe->getParams();
		$maxPhotosPerPage = $params->get('picasaMaxPhotosPerPage');
		return $maxPhotosPerPage;
	}

	function getAlbumFeed()
	{

		$db =& JFactory::getDBO();

		if (!isset($albumQuery)){
			$this->loadZendClasses();
			$albumQuery = new Zend_Gdata_Photos_AlbumQuery();
		}

		$picasaUsername = 'vangoidtsenhoven';
		$maxPhotosPerPage = $this->getMaxPhotosPerPage();
		$albumQuery->setUser($picasaUsername);
		$albumQuery->setAlbumId( $db->getEscaped(JRequest::getVar('album')) );
		$albumQuery->setMaxResults($maxPhotosPerPage);
		$albumQuery->setStartIndex($maxPhotosPerPage * ($db->getEscaped(JRequest::getVar('page'))-1) );

		// FIXME
		// This should FIX the T_OPERATOR_OBJECT error
		// Waiting for feedbacks
		if (!isset($albumFeed)){
			$service = $this->getService();
			$albumFeed = $service->getAlbumFeed($albumQuery);
		}

		return $albumFeed;

	}

	function getUserFeed()
	{

		if (!isset($userQuery)){
			$this->loadZendClasses();
			$userQuery = new Zend_Gdata_Photos_UserQuery();
		}

		$picasaUsername = 'vangoidtsenhoven';

		$userQuery->setUser($picasaUsername);

		if (!isset($userFeed)){
			$service = $this->getService();
			$userFeed = $service->getUserFeed(null, $userQuery);
		}

		return $userFeed;

	}

	function checkUsername($username)
	{
		try {
			if (!isset($userQuery)){
				$this->loadZendClasses();
				$userQuery = new Zend_Gdata_Photos_UserQuery();
			}

			$userQuery->setUser($username);

			if (!isset($userFeed)){
				$service = $this->getService();
				$userFeed = $service->getUserFeed(null, $userQuery);
			}

		} catch (Zend_Gdata_App_HttpException $e) {
		    //echo "Error: " . $e->getMessage() . "<br />\n";
		    if ($e->getResponse() != null) {
		        //echo "Body: <br />\n" . $e->getResponse()->getBody() .
		             "<br />\n";
		        return;
		    }

		} catch (Zend_Gdata_App_Exception $e) {
		    //echo "Error: " . $e->getMessage() . "<br />\n";
		    return;
		}

		return true;

	}

	function getAlbumsList()
	{
		try {
		    $userFeed = $this->getUserFeed();
		    $albumsList = $userFeed->getEntry();

		    $put = array();

			foreach ( $albumsList as $album ) {
				$coverMediaGroup = $album->getMediaGroup();
				$albumTitle = $album->title;
				$albumId = $album->getGphotoId();

				$put[] = JHTML::_('select.option',  $albumId, $albumTitle);
			}

		} catch (Zend_Gdata_App_HttpException $e) {
		    //echo "Error: " . $e->getMessage() . "<br />\n";
		    if ($e->getResponse() != null) {
		        //echo "Body: <br />\n" . $e->getResponse()->getBody() .
		             "<br />\n";
		        return;
		    }

		} catch (Zend_Gdata_App_Exception $e) {
		    //echo "Error: " . $e->getMessage() . "<br />\n";
		    return;
		}



		return $put;
	}

	function getPhotoEntry( $photoId )
	{

		$db =& JFactory::getDBO();

		if (!isset($photoQuery)){
			$this->loadZendClasses();
			$photoQuery = new Zend_Gdata_Photos_PhotoQuery();
		}

		$picasaUsername = $this->getPicasaUsername();

		$photoQuery->setUser($picasaUsername);
		$photoQuery->setType("entry");
		$photoQuery->setAlbumId( $db->getEscaped(JRequest::getVar('album')) );
		$photoQuery->setPhotoId($photoId);

		$service = $this->getService();
		$photoEntry = $service->getPhotoEntry($photoQuery);

		return $photoEntry;

	}

	function getAlbum()
	{
		$albumFeed = $this->getAlbumFeed();
		$albumTitle = $albumFeed->getTitle();

		$numPhotos = $albumFeed->getGphotoNumPhotos();
		$numPhotosText = $numPhotos->getText();
		$photosEntry = $albumFeed->getEntry();
		$photosList = array();

		foreach ($photosEntry as $photo){
			$photoId = $photo->getGphotoId();
			$photoEntry = $this->getPhotoEntry( $photoId->getText() );
			$photoTitle = $photoEntry->getTitle();
			$photoMediaGroup = $photoEntry->getMediaGroup();
			$mediaGroupContent = $photoMediaGroup->getContent();
			$photoURL = $mediaGroupContent[0]->getUrl();
			$photoThumbnail = $photoMediaGroup->getThumbnail();
			$thumbnailURL = $photoThumbnail[1]->getUrl();
			$photoObject = 	array ('photoURL' => $photoURL,
											 'thumbnailURL' => $thumbnailURL,
											 'photoTitle' => $photoTitle->getText());
			$photosList[] = $photoObject;
		}

		$album = array('albumTitle' => $albumTitle->getText(),
									 'numPhotos' => $numPhotosText,
									 'photosList' => $photosList);

		return $album;
	}

}