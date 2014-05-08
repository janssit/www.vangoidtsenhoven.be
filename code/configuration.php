<?php

$file = in_array($_SERVER['REMOTE_ADDR'], array('127.0.0.1', '::1')) ? 'localhost.php' : 'production.php';

include dirname(__FILE__).'/settings/'.$file;