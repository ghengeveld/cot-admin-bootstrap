<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=users.main
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('admin', 'any', 'R'))
{
	$admintplfile = cot_tplfile('users', 'module', true);
	require_once cot_incfile('admintheme', 'plug', 'load');
}

if (defined('COT_ADMIN'))
{
	$localskin = $admintplfile;
	array_unshift($title, array(cot_url('admin'), $L['Adminpanel']));
}

?>
