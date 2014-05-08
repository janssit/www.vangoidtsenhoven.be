<?php
class JConfig {
	/* Site Settings */
	var $offline = '0';
	var $offline_message = 'Deze website is tijdelijk onbeschikbaar door werkzaamheden. Gelieve later terug te keren.';
	var $sitename = 'Schrijnwerkerij Vangoidtsenhoven bvba';
	var $editor = 'tinymce';
	var $list_limit = '20';
	var $legacy = '0';
	/* Debug Settings */
	var $debug = '0';
	var $debug_lang = '0';
	/* Database Settings */
	var $dbtype = 'mysql';
	var $host = '';
	var $user = '';
	var $password = '';
	var $db = '';
	var $dbprefix = 'jos_';
	/* Server Settings */
	var $live_site = '';
	var $secret = 'o2MCTk2LKkHnxVY9';
	var $gzip = '0';
	var $error_reporting = '-1';
	var $helpurl = 'http://help.joomla.org';
	var $xmlrpc_server = '0';
	var $ftp_host = '127.0.0.1';
	var $ftp_port = '21';
	var $ftp_user = '';
	var $ftp_pass = '';
	var $ftp_root = '';
	var $ftp_enable = '0';
	var $force_ssl = '0';
	/* Locale Settings */
	var $offset = '0';
	var $offset_user = '0';
	/* Mail Settings */
	var $mailer = 'mail';
	var $mailfrom = 'info@vangoidtsenhoven.be';
	var $fromname = 'Schrijnwerkerij Vangoidtsenhoven bvba';
	var $sendmail = '/usr/sbin/sendmail';
	var $smtpauth = '0';
	var $smtpsecure = 'none';
	var $smtpport = '';
	var $smtpuser = 'localhost';
	var $smtppass = '';
	var $smtphost = '';
	/* Cache Settings */
	var $caching = '0';
	var $cachetime = '15';
	var $cache_handler = 'file';
	/* Meta Settings */
	var $MetaDesc = 'Schrijnwerkerij Vangoidtsenhoven werd opgericht in 1990 en is gespecialiseerd in algemeen schrijnwerk, totaalrenovatie, etc.';
	var $MetaKeys = 'schrijnwerkerij, vangoidtsenhove, schrijnwerk, totaalrenovatie, geetbets, keukens, deuren, ramen';
	var $MetaTitle = '1';
	var $MetaAuthor = '1';
	/* SEO Settings */
	var $sef           = '1';
	var $sef_rewrite   = '1';
	var $sef_suffix    = '0';
	/* Feed Settings */
	var $feed_limit   = 10;
	var $feed_email   = 'author';
	var $log_path = '/var/www/curadens.be/public/logs';
	var $tmp_path = 'tmp';
	/* Session Setting */
	var $lifetime = '15';
	var $session_handler = 'database';
	
	// constructor
	function JConfig() {       
	    // change some properties
	    $this->host = getenv('MYSQL_DB_HOST');
	    $this->user = getenv('MYSQL_USERNAME');
	    $this->password = getenv('MYSQL_PASSWORD');
	    $this->db = getenv('MYSQL_DB_NAME');
	    
	    $this->smtphost = getenv('SENDGRID_HOST');
	    $this->smtpport = getenv('SENDGRID_PORT');
	    $this->smtpuser = getenv('SENDGRID_USERNAME');
	    $this->smtppass = getenv('SENDGRID_PASSWORD');
	    return true;
	}
}
?>