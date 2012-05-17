<?php

defined('COT_CODE') or die('Wrong URL.');

$L['pagenav_first'] = 'First';
$L['pagenav_prev'] = '&larr;';
$L['pagenav_next'] = '&rarr;';
$L['pagenav_last'] = 'Last';

/* Extensions */
$L['ShowAlphabetical'] = 'Alphabetical list';
$L['ShowCategories'] = 'Category view';
$L['ShowParts'] = 'Hooked parts';
$L['ShowAll'] = 'Show all';
$L['ShowInstalled'] = 'Show installed';

$L['Extensions'] = 'Extensions';
$L['ExtensionDetails'] = 'Details';
$L['ExtensionTags'] = 'Template tags';
$L['ExtensionParts'] = 'Hooked parts';

$L['AddEntry'] = 'Add new entry';
$L['UpdateEntries'] = 'Update entries';

/* Rights */
$L['RightsFor'] = 'Rights for';
$L['CopyRightsFromGroup'] = 'Copy the rights from another group';
$L['CopyRightsInfo'] = 'Warning: This will remove all the current rights of the group and replace them with the rights of the selected group.';
$L['Copy'] = 'Copy';
$L['CustomRight'] = 'Custom right';
$L['HideCustomRights'] = 'Hide custom rights';
$L['ShowCustomRights'] = 'Show custom rights';

/* Usergroups / Users */
$L['Usergroups'] = 'Usergroups';
$L['GroupName'] = 'Group name';
$L['ListAllUsers'] = 'Show all users';
$L['ListMaingroup'] = 'Show users in main group';
$L['ListGroup'] = 'Show users in group';
$L['InThisGroup'] = 'in this group';
$L['AddGroup'] = 'Add new group';
$L['RemoveGroup'] = 'Remove this group';
$L['DisableGroup'] = 'Disable this group';
$L['DisableGroupInfo'] = 'Temporarily disables the group. Rights will not apply and the group will not be visible on the userlist or in the member\'s profiles.';
$L['MaintenanceAccess'] = 'Maintenance access';
$L['MaintenanceAccessInfo'] = 'Allows access to site when maintenance mode is on.';
$L['HideGroup'] = 'Hide this group';
$L['HideGroupInfo'] = 'A hidden group will not be displayed in the user\'s profile or in the userlist. Whether the users in a hidden group are hidden in the userlist can be <a href="'.cot_url('admin', 'm=config&n=edit&o=plug&p=hiddengroups').'">configured</a>.';
$L['DisableRights'] = 'Disable rights';
$L['DisableRightsInfo'] = "Rightless groups are useful when the group doesn't relate to a role in the system. For example you can use this to create named teams for a sports or gaming website, where all members have the same rights regardless of the team they are in. Rightless groups cannot be used as main group.";
$L['MaxFileSize'] = 'Maximum file size';
$L['FileSpace'] = 'Total file space allowance';
$L['FileSpaceInfo'] = 'Space allowances are not summed up if a user is in multiple groups. The highest allowance is used.';

/* Extra Fields */
$L['ExtraFields'] = 'Extra Fields';
$L['ShowAllTables'] = 'Show all database tables';
$L['ShowRelatedTables'] = 'Only show tables configured for Extra Fields';
$L['TableName'] = 'Table name';
$L['BelongsTo'] = 'Belongs to';
$L['ExtfTitle'] = 'Title';
$L['ExtfTitleInfo'] = 'Describing field label, can be used with _TITLE tag.';
$L['ExtfCode'] = 'Code';
$L['ExtfCodeInfo'] = 'The database column name, should be lowercase and alphanumeric.';
$L['ExtfDefault'] = 'Default value';
$L['ExtfType'] = 'Type';
$L['ExtfTypeString'] = 'String (max 255 chars)';
$L['ExtfTypeTextarea'] = 'Textarea';
$L['ExtfTypeInteger'] = 'Integer (no decimals)';
$L['ExtfTypeDouble'] = 'Number (with decimals)';
$L['ExtfTypeCurrency'] = 'Currency (2 decimals)';
$L['ExtfTypeRange'] = 'Range';
$L['ExtfTypeSelect'] = 'Dropdown select';
$L['ExtfTypeCheckbox'] = 'Checkbox (yes/no)';
$L['ExtfTypeChecklistbox'] = 'Multiple checkboxes';
$L['ExtfTypeRadio'] = 'Radio buttons';
$L['ExtfTypeCountry'] = 'Country list dropdown';
$L['ExtfTypeDatetime'] = 'Date/time input';
$L['ExtfTypeFile'] = 'File upload';
$L['ExtfCustomization'] = 'Customization';
$L['ExtfParser'] = 'Parser';
$L['ExtfOptions'] = 'Options';
$L['ExtfParameters'] = 'Parameters';
$L['ExtfHTML'] = 'HTML template for form field';
$L['ExtfHTMLInfo'] = array(
	'input' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'textarea' => 'Available parameters: {$name} {$value} {$rows} {$cols} {$attrs} {$error}',
	'inputint' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'double' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'currency' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'range' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'select' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'checkbox' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'checklistbox' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'radio' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'country' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'datetime' => 'Available parameters: {$day} {$month} {$year} {$hour} {$minute}',
	'file' => 'Available parameters: {$name} {$value} {$filepath} {$attrs} {$error} {$delname}',
);
$L['ExtfRegexMatch'] = 'Regular expression check';
$L['ExtfRegexMatchInfo'] = 'Provide a pattern for <a href="http://php.net/manual/en/function.preg-match.php">preg_match</a>.';
$L['ExtfNewOption'] = 'New option';
$L['ExtfRange'] = 'Range';
$L['ExtfMin'] = 'Min. value';
$L['ExtfMax'] = 'Max. value';
$L['ExtfMinYear'] = 'From year';
$L['ExtfMaxYear'] = 'To year';
$L['ExtfFormat'] = 'Format';
$L['ExtfRangeIntInfo'] = 'Provide two integers.';
$L['ExtfRangeFloatInfo'] = 'Provide two decimal numbers.';
$L['ExtfSeparator'] = 'Separator';

$L['Enable'] = 'Enable';
$L['Disable'] = 'Disable';

$L['ShowMore'] = 'Show more';
$L['ShowLess'] = 'Show less';

$Ls['Users'] = array('users','user');
$Ls['Files'] = array('files','file');

?>