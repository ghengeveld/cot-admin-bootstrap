<?php

defined('COT_CODE') or die('Wrong URL');

if (strpos($admintplfile, "{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/modules/") !== FALSE)
{
	define('COT_ADMIN', TRUE);
	if ($cfg['admintheme'])
	{
		if (file_exists("{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.{$usr['lang']}.lang.php"))
		{
			require_once "{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.{$usr['lang']}.lang.php";
		}
		elseif (file_exists("{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.en.lang.php"))
		{
			require_once "{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.en.lang.php";
		}
		if (file_exists("{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.php"))
		{
			require_once "{$cfg['themes_dir']}/admin/{$cfg['admintheme']}/{$cfg['admintheme']}.php";
		}
	}
}

?>