<?php

jimport('joomla.application.component.controller');

class PICmanController extends JController
{

	function display()
	{
		// Retrieve the current view
		$document =& JFactory::getDocument();
		$viewName  = JRequest::getVar( 'view', 'display' );
		$viewType	= $document->getType();
		$view = & $this->getView($viewName, $viewType);

		// Set the correct model for the view
		$model  = & $this->getModel('Album');
    	$view->setModel( $model, true );

		// Display the view
		parent::display();
	}
}

?>

