<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=page.add.main
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('admin', 'any', 'R'))
{
	$admintplfile = cot_tplfile(array('page', 'add', $structure['page'][$rpage['page_cat']]['tpl']), 'module', true);
	require_once cot_incfile('admintheme', 'plug', 'load');
}

if (defined('COT_ADMIN'))
{
	$mskin = $admintplfile;
}

?>
