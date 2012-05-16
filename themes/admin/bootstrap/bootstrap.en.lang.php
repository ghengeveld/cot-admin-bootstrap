<?php

defined('COT_CODE') or die('Wrong URL.');

$L['pagenav_first'] = 'First';
$L['pagenav_prev'] = '&larr;';
$L['pagenav_next'] = '&rarr;';
$L['pagenav_last'] = 'Last';

$L['ListParts'] = 'List all hooked parts';

$L['Extensions'] = 'Extensions';
$L['ExtensionDetails'] = 'Details';
$L['ExtensionTags'] = 'Template tags';
$L['ExtensionParts'] = 'Hooked parts';

$L['AddEntry'] = 'Add new entry';
$L['UpdateEntries'] = 'Update entries';

$L['RightsFor'] = 'Rights for';
$L['CopyRightsFromGroup'] = 'Copy the rights from another group';
$L['CopyRightsInfo'] = 'Warning: This will remove all the current rights of the group and replace them with the rights of the selected group.';
$L['Copy'] = 'Copy';
$L['CustomRight'] = 'Custom right';
$L['HideCustomRights'] = 'Hide custom rights';
$L['ShowCustomRights'] = 'Show custom rights';

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
$L['ExtfParser'] = 'Parser';
$L['NewOption'] = 'New option';
$L['Range'] = 'Range';
$L['From'] = 'From';
$L['To'] = 'To';

$L['Enable'] = 'Enable';
$L['Disable'] = 'Disable';

$L['ShowMore'] = 'Show more';
$L['ShowLess'] = 'Show less';

$Ls['Users'] = array('users','user');
$Ls['Files'] = array('files','file');

?>