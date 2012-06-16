<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.config.edit.tags
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

$siblings = $db->query("
	SELECT DISTINCT(config_cat) FROM $db_config
	WHERE config_owner = ? AND config_type != ?
	ORDER BY config_cat ASC
", array($o, COT_CONFIG_TYPE_HIDDEN))->fetchAll();
if ($siblings)
{
	foreach ($siblings as $sibling)
	{
		if ($o == 'core') $name = $L["core_{$sibling['config_cat']}"];
		if ($o == 'module') $name = $cot_modules[$sibling['config_cat']]['title'];
		if ($o == 'plug') $name = $cot_plugins_enabled[$sibling['config_cat']]['title'];
		$t->assign(array(
			'ADMIN_CONFIG_SIBLING_URL' => cot_url('admin', "m=config&n=edit&o=$o&p={$sibling['config_cat']}"),
			'ADMIN_CONFIG_SIBLING_NAME' => $name,
			'ADMIN_CONFIG_SIBLING_ACTIVE' => ($sibling['config_cat'] == $p)
		));
		$t->parse('MAIN.EDIT.ADMIN_CONFIG_SIBLINGS.ADMIN_CONFIG_SIBLINGS_ROW');
	}
	$owners = array('core' => $L['Core'], 'module' => $L['Modules'], 'plug' => $L['Plugins']);
	$t->assign('ADMIN_CONFIG_OWNER', $owners[$o]);
	$t->parse('MAIN.EDIT.ADMIN_CONFIG_SIBLINGS');
}

?>
