<?php
/******************************************************************************
 MachForm

 Copyright 2007 Appnitro Software. This code cannot be redistributed without
 permission from http://www.appnitro.com/

 More info at: http://www.appnitro.com/
 ******************************************************************************/
	global $lang;

	//simple name and extended name
	$lang['name_first']			=	'Voornaam';
	$lang['name_last']			=	'Achternaam';
	$lang['name_title']			=	'Titel';
	$lang['name_suffix']		=	'Tussenvoegsel';

	//address
	$lang['address_street']		=	'Straat';
	$lang['address_street2']	=	'Straat (lijn 2)';
	$lang['address_city']		=	'Stad';
	$lang['address_state']		=	'Provincie';
	$lang['address_zip']		=	'Postcode';
	$lang['address_country']	=	'Land';

	//captcha
	$lang['captcha_required']	=	'Dit veld is verplicht! Vul de letters in die u in de afbeelding ziet.';
	$lang['captcha_mismatch']	=	'De ingevulde letters komen niet overeen, probeer opnieuw.';
	$lang['captcha_error']		=	'Probleem bij het verzenden, probeer opnieuw.';
	$lang['captcha_title']		=	'Vul de letters in die u in de afbeelding ziet.';

	//date
	$lang['date_dd']			=	'DD';
	$lang['date_mm']			=	'MM';
	$lang['date_yyyy']			=	'YYYY';

	//price
	$lang['price_dollar_main']	=	'Dollars';
	$lang['price_dollar_sub']	=	'Cents';
	$lang['price_euro_main']	=	'Euros';
	$lang['price_euro_sub']		=	'Cents';
	$lang['price_pound_main']	=	'Pounds';
	$lang['price_pound_sub']	=	'Pence';
	$lang['price_yen']			=	'Yen';

	//time
	$lang['time_hh']			=	'HH';
	$lang['time_mm']			=	'MM';
	$lang['time_ss']			=	'SS';

	//error message
	$lang['error_title']		=	'Er is een probleem opgetreden, contacteer ons via info@vangoidtsenhoven.be';
	$lang['error_desc']			=	'Problemen zijn <strong>gemarkeerd</strong>.';

	//form buttons
	$lang['submit_button']		=	'Verzenden';
	$lang['continue_button']	=	'Doorgaan';
	$lang['back_button']		=	'Terug';

	//form status
	$lang['form_inactive']		=	'This form is currently inactive.';

	//form password
	$lang['form_pass_title']	=	'This form is password protected.';
	$lang['form_pass_desc']		=	'Please enter your password.';
	$lang['form_pass_invalid']	=	'Invalid Password!';

	//form review
	$lang['review_title']		=	'Review Your Entry';
	$lang['review_message']		=	'Please review your entry below. Click Submit button to finish.';

	//validation message
	$lang['val_required'] 		=	'Dit is een verplicht veld!';
	$lang['val_required_file'] 	=	'Dit is een verplicht veld!';
	$lang['val_unique'] 		=	'This field requires a unique entry and this value has already been used.';
	$lang['val_integer'] 		=	'This field must be an integer.';
	$lang['val_float'] 			=	'This field must be a float.';
	$lang['val_numeric'] 		=	'This field must be a number.';
	$lang['val_min'] 			=	'This field can not be less than %s characters.';
	$lang['val_max'] 			=	'This field can not be greater than %s characters.';
	$lang['val_range'] 			=	'This field is not in the range %s through %s characters.';
	$lang['val_email'] 			=	'This field is not in the correct email format.';
	$lang['val_website'] 		=	'This field is not in the correct website address format.';
	$lang['val_username'] 		=	'This field may only consist of a-z 0-9 and underscores.';
	$lang['val_equal'] 			=	'%s must match.';
	$lang['val_date'] 			=	'This field is not in the correct date format.';
	$lang['val_time'] 			=	'This field is not in the correct time format.';
	$lang['val_phone'] 			=	'Please enter a valid phone number.';
	$lang['val_filetype']		=	'The filetype you are attempting to upload is not allowed.';

	//fields on excel/csv
	$lang['export_num']			=	'No.';
	$lang['date_created']		=	'Date Created';
	$lang['date_updated']		=	'Date Updated';
	$lang['ip_address']			=	'IP Address';
?>