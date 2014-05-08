<?php
/**
* @package		Joomla
* @subpackage	Foomu
* @copyright	Copyright (C) 2008 Janss IT services. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
*/

/**
 * @param	array
 * @return	array
 */
function MachformBuildRoute( &$query )
{
	$segments = array();

	if (isset($query['view'])) {
		unset($query['view']);
	}

	return $segments;
}

/**
 * @param	array
 * @return	array
 */
function MachformParseRoute( $segments )
{
	$vars = array();

	$vars['view'] = 'foomu';

	return $vars;
}