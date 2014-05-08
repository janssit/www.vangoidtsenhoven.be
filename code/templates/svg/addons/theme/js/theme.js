function nifty()
{
	Nifty("div#frame","br bl normal transparent");
	Nifty("div#content","normal transparent");
	Nifty("a.readon","normal transparent");
	Nifty("h3.toggler","normal transparent");
	Nifty("div.componentheading","normal transparent");
	Nifty("td.contentheading","normal transparent");
	Nifty("td.contentheading_store","normal transparent");
	Nifty("div.moduletable_logo"," br bl normal transparent");
	Nifty("div.moduletable_products","normal transparent");
	Nifty("div.moduletable_product","normal transparent");
	Nifty("div.moduletable_pathway","normal transparent");
	Nifty("div.moduletable","normal transparent");
	Nifty("div.nifty","normal transparent");
	Nifty("li.nifty","normal transparent");
	Nifty("img.nifty","normal transparent");
	Nifty("ul.nifty","normal transparent");
	Nifty("div.nifty_b","bl br normal transparent");
	Nifty("div.moduletable h3","normal transparent");
	Nifty("div#content h3","normal transparent");
	Nifty("div.product h4","normal transparent");
	Nifty("div.logo","normal transparent fixed-height");
	
	//Reflection.add('photo1', options);
}

window.addEvent('domready', function(){
	var Tips1 = new Tips($$('.tips'));
}); 

function initTheme()
{
	//add menu behavior
	//addStyleSwitcher('menu-header')
	
	//blur all anchors
	addBlurBehavior()

	//add Status Message
	addStatusMessage()
}

// ------------------------------------------------------------------
// Anchor: Remove anchor outlines from all links in the document
// ------------------------------------------------------------------

function addBlurBehavior() {
  if(document.getElementsByTagName)
  {
  	var allLinks = document.getElementsByTagName("a")
   	for (var i = 0; i < allLinks.length; i++)
		allLinks[i].onfocus = focusAnchor
  }
}

function focusAnchor() {
	this.blur()
}

// ------------------------------------------------------------------
// Status: Add status message to the browser window
// ------------------------------------------------------------------

function addStatusMessage()
{
	window.defaultStatus="Design by 'Janss.be { Janss IT services }'" 
}

// ------------------------------------------------------------------
// IFrame: Height of the content inside
// ------------------------------------------------------------------    

function getElement(aID) {
	return (document.getElementById) ?
	document.getElementById(aID) : document.all[aID];
}

function getIFrameDocument(aID) {
	var rv = null;
	var frame=getElement(aID);

	// if contentDocument exists, W3C compliant (e.g. Mozilla)
	if (frame.contentDocument)
		rv = frame.contentDocument;
	else // bad IE  ;)
		rv = document.frames[aID].document;

	return rv;
}

function adjustMyFrameSize() {
	var frame = getElement("foomu");
	var frameDoc = getIFrameDocument("foomu");
	
	frame.height = frameDoc.body.offsetHeight;
}