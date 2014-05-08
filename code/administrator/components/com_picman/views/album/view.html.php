<?php
/**
* @version		$Id: view.html.php 10094 2008-03-02 04:35:10Z instance $
* @package		Joomla
* @subpackage	Picman
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die( 'Restricted access' );

jimport( 'joomla.application.component.view');

/**
 * HTML View class for the WebLinks component
 *
 * @static
 * @package		Joomla
 * @subpackage	Picman
 * @since 1.0
 */

require_once (JPATH_COMPONENT.DS.'view.php');

class PicmanViewAlbum extends PicmanView
{
	function display($tpl = null)
	{
		global $mainframe;

		if($this->getLayout() == 'form') {
			$this->_displayForm($tpl);
			return;
		}

		//get the album
		$album =& $this->get('data');

		parent::display($tpl);
	}

	function _displayForm($tpl)
	{
		global $mainframe, $option;

		$db		=& JFactory::getDBO();
		$uri 	=& JFactory::getURI();
		$user 	=& JFactory::getUser();
		$model	=& $this->getModel();

		$lists = array();

		//get the album
		$album	=& $this->get('data');
		$isNew		= ($album->id < 1);
		if(!$albumsList = & $this->get( 'AlbumsList' )) {
			//echo "<script> alert('Error'); </script>\n";
		}


		// fail if checked out not by 'me'
		if ($model->isCheckedOut( $user->get('id') )) {
			$msg = JText::sprintf( 'DESCBEINGEDITTED', JText::_( 'The album' ), $album->title );
			$mainframe->redirect( 'index.php?option='. $option, $msg );
		}

		// Edit or Create?
		if (!$isNew)
		{
			$model->checkout( $user->get('id') );
		}
		else
		{
			// initialise new record
			$album->published = 1;
			$album->catid 	= JRequest::getVar( 'catid', 0, 'post', 'int' );
		}


		// build list of categories
		$lists['catid'] 			= JHTML::_('form.category',  'catid', $option, $album->catid, '' );

		// build the html select list
		$lists['published'] 		= JHTML::_('select.booleanlist',  'published', 'class="inputbox"', $album->published );

		// build list of albums - hide when username is blank or wrong
		if(isset($albumsList)) $lists['album']  			= JHTML::_('select.genericlist',  $albumsList, 'albumid', '', 'value', 'text', $album->albumid  );

		//clean album data
		JFilterOutput::objectHTMLSafe( $album, ENT_QUOTES, 'description' );

		$file 	= JPATH_COMPONENT.DS.'models'.DS.'album.xml';
		$params = new JParameter( $album->params, $file );

		$this->assignRef('lists',		$lists);
		$this->assignRef('album',		$album);
		$this->assignRef('params',		$params);

		parent::display($tpl);
	}
}
