<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=page.edit.main
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('admin', 'any', 'R'))
{
	$admintplfile = cot_tplfile(array('page', 'edit', $structure['page'][$pag['page_cat']]['tpl']), 'module', true);
	require_once cot_incfile('admintheme', 'plug', 'load');
}

if (defined('COT_ADMIN'))
{
	$mskin = $admintplfile;
}

?>
