<?php
/**
 * @version		$Id: controller.php 10094 2008-03-02 04:35:10Z instance $
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

jimport( 'joomla.application.component.controller' );

/**
 * Picman Album Controller
 *
 * @package		Joomla
 * @subpackage	Picman
 * @since 1.5
 */
class PicmanControllerAlbum extends PicmanController
{
	function __construct()
	{
		parent::__construct();

		// Register Extra tasks
		$this->registerTask( 'add', 'edit' );
		$this->registerTask( 'apply', 'save' );
		$this->registerTask( 'apply_new', 'save' );
	}

	function edit( )
	{
		JRequest::setVar( 'hidemainmenu', 1 );
		JRequest::setVar( 'layout', 'form'  );
		JRequest::setVar( 'view'  , 'album');

		// Checkout the album
		$model = $this->getModel('album');
		$model->checkout();

		parent::display();
	}

	function save()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$task 	= JRequest::getCmd( 'task' );

		$post	= JRequest::get('post');
		$cid	= JRequest::getVar( 'cid', array(0), 'post', 'array' );
		$post['id'] = (int) $cid[0];

		$model = $this->getModel('album');

		$row =& JTable::getInstance('album', 'Table');

		if ($model->checkUsername($post['username'])) {
			switch ($task)
			{
				case 'apply':
					$model->store($post);
					$msg = JText::_( 'Album Saved' );
					$model->checkin();
					$link = 'index.php?option=com_picman&view=album&controller=album&task=edit&cid[]='. $post['id'];
					break;
				case 'save':
				default:
					$model->store($post);
					$msg = JText::_( 'Album Saved' );
					$model->checkin();
					$link = 'index.php?option=com_picman';
					break;
			}
		} else {
			$msg = JText::_( 'Google Username Incorrect' );
			$link = 'index.php?option=com_picman&view=album&task=edit&cid[]='. $post['id'];
		}


		$this->setRedirect($link, $msg);
	}

	function remove()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);

		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'Select an item to delete' ) );
		}

		$model = $this->getModel('album');
		if(!$model->delete($cid)) {
			echo "<script> alert('".$model->getError(true)."'); window.history.go(-1); </script>\n";
		}

		$this->setRedirect( 'index.php?option=com_picman' );
	}


	function publish()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);

		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'Select an item to publish' ) );
		}

		$model = $this->getModel('album');
		if(!$model->publish($cid, 1)) {
			echo "<script> alert('".$model->getError(true)."'); window.history.go(-1); </script>\n";
		}

		$this->setRedirect( 'index.php?option=com_picman' );
	}


	function unpublish()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);

		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'Select an item to unpublish' ) );
		}

		$model = $this->getModel('album');
		if(!$model->publish($cid, 0)) {
			echo "<script> alert('".$model->getError(true)."'); window.history.go(-1); </script>\n";
		}

		$this->setRedirect( 'index.php?option=com_picman' );
	}

	function cancel()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Checkin the album
		$model = $this->getModel('album');
		$model->checkin();

		$this->setRedirect( 'index.php?option=com_picman' );
	}


	function orderup()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$model = $this->getModel('album');
		$model->move(-1);

		$this->setRedirect( 'index.php?option=com_picman');
	}

	function orderdown()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$model = $this->getModel('album');
		$model->move(1);

		$this->setRedirect( 'index.php?option=com_picman');
	}

	function saveorder()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$cid 	= JRequest::getVar( 'cid', array(), 'post', 'array' );
		$order 	= JRequest::getVar( 'order', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		JArrayHelper::toInteger($order);

		$model = $this->getModel('album');
		$model->saveorder($cid, $order);

		$msg = 'New ordering saved';
		$this->setRedirect( 'index.php?option=com_picman', $msg );
	}
}