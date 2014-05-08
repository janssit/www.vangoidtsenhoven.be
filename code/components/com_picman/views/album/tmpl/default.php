<div id="com_picman">
<?php
// no direct access
defined('_JEXEC') or die('Restricted access');
$css = "<link type='text/css' media='screen' rel='stylesheet' href='" . $this->baseurl . "/components/com_picman/themes/default/css/thumbnails.css' />";
$shadowbox_css = "<link type='text/css' media='screen' rel='stylesheet' href='" . $this->baseurl . "/components/com_picman/libraries/shadowbox/awesomebox.css' />";

$yahoo1 = "<script type='text/javascript' src='http://yui.yahooapis.com/2.2.0/build/yahoo-dom-event/yahoo-dom-event.js'></script>";
$animation = "<script type='text/javascript' src='http://yui.yahooapis.com/2.2.0/build/animation/animation-min.js'></script>";

$shadowbox = "<script type='text/javascript' src='" . $this->baseurl . "/components/com_picman/libraries/shadowbox/awesomebox.js'></script>";

$mainframe->addCustomHeadTag($css);
$mainframe->addCustomHeadTag($shadowbox_css);
$mainframe->addCustomHeadTag($yahoo1);
$mainframe->addCustomHeadTag($animation);
$mainframe->addCustomHeadTag($shadowbox);

?>
<?php

//set_include_path("Zend/"); // set if Zend folder isn't in the same directory as gallery.php, e.g. it's below it

// Vars
$user = "vangoidtsenhoven";
$pass = "vangoidt09";
$albumId = $this->row->albumid;
$albumName = $this->row->username; // This is just lazy, because when you are using the newAlbumQuery method, the name of the album can be gotten anyway.
$page = $_REQUEST['page'];
$maxResults = 12; // Max Results per page
$maxImageSize = 640; // don't go over 800 otherwise you won't be able to embed the larger photos
$zend_dir = "Zend/Loader.php"; // should point to your Zend directory

// Functions
function Paginate($numPages,$currentPage,$albumName,$albumId) {

    // Create page links
    $s = "<ul class='page-nav'>\n";

    for($i=1;$i<=$numPages;$i++) {

        $class = "";

        // Current page?
        if($i == $currentPage) {
            $class = " class='selected'";
        }

        $s .= "<li".$class.">";
        $s .= "<a href='?albumId=".$albumId."&amp;albumName=".$albumName."&amp;page=".$i."'>".$i."</a></li>\n";
    }

    $s .= "</ul>\n";

    return $s;
}

	$absolute_path = $mainframe->getCfg( 'absolute_path' );

		ini_set("include_path", ini_get("include_path") . PATH_SEPARATOR . JPATH_COMPONENT . DS . 'libraries');

		require_once('Zend' . DS . 'Loader.php');

Zend_Loader::loadClass('Zend_Gdata_Photos');
Zend_Loader::loadClass('Zend_Gdata_ClientLogin');
Zend_Loader::loadClass('Zend_Gdata_AuthSub');

// Authenticate
$serviceName = Zend_Gdata_Photos::AUTH_SERVICE_NAME;
$client = Zend_Gdata_ClientLogin::getHttpClient($user, $pass, $serviceName);

// update the second argument to be CompanyName-ProductName-Version
$gp = new Zend_Gdata_Photos($client, "Google-DevelopersGuide-1.0");

// Default page
if(!isset($page)) {
    $page=1;
}

if(isset($albumName)) {
    $albumName = urldecode($albumName);
}
?>

    <h2 class="contentheading"><?php echo $this->row->title; ?></h2>

    <?php
    // List photos from album
    if(!isset($albumId)) {
    ?>
        <div class="grid">
        <p>Choose a photo album to view.</p>
        </div>
    <?php
    } else {
        $query = $gp->newAlbumQuery();
        $query->setUser("default");
        $query->setAlbumId($albumId);
        $query->setImgMax($maxImageSize);
        $query->setMaxResults($maxResults);

        if(isset($page)) {
            $query->setStartIndex((($page-1) * $maxResults)+1);
        }
    ?>
        <div class="gallery-photos">

        <?php
        try {
            $albumFeed = $gp->getAlbumFeed($query);

            // Number of results
            $numResults = $albumFeed->gphotoNumPhotos->text;

            // You should probably check if $numResults is a number...
            // If there are more than $maxResults, we need to paginate this...
            $numPages = ceil($numResults / $maxResults);

            if($numPages > 1) {
                echo Paginate($numPages,$page,$albumName,$albumId);
            }

            foreach ($albumFeed as $photoEntry) {
                $contentUrl = "";
                $thumbnailUrl = "";

                if ($photoEntry->getMediaGroup()->getContent() != null) {
                  $mediaContentArray = $photoEntry->getMediaGroup()->getContent();
                  $contentUrl = $mediaContentArray[0]->getUrl();
                }

                if ($photoEntry->getMediaGroup()->getThumbnail() != null) {
                  $mediaThumbnailArray = $photoEntry->getMediaGroup()->getThumbnail();
                  $thumbnailUrl = $mediaThumbnailArray[1]->getUrl();
                }

                 echo "<div class='photo'><a rel='gallery' href='".$contentUrl."'><img src='" . $thumbnailUrl . "' alt='" . $photoEntry->title->text ."' title='" . $albumName ."' /></a></div>\n";
               }

            //print_r($albumFeed);

            echo "<div style='clear:both;margin-bottom:6px;'>&nbsp;</div>";

            if($numPages > 1) {
                echo Paginate($numPages,$page,$albumName,$albumId);
            }
        } catch (Zend_Gdata_App_HttpException $e) {

            echo "Error: " . $e->getMessage() . "<br />\n";

            if ($e->getResponse() != null) {
                echo "Body: <br />\n" . $e->getResponse()->getBody() .
                     "<br />\n";
            }

            // In new versions of Zend Framework, you also have the option
            // to print out the request that was made.  As the request
            // includes Auth credentials, it's not advised to print out
            // this data unless doing debugging
            // echo "Request: <br />\n" . $e->getRequest() . "<br />\n";

        } catch (Zend_Gdata_App_Exception $e) {
            echo "Error: " . $e->getMessage() . "<br />\n";
        }
        ?>
        </div>
    <?php
    }
    ?>
   </div>