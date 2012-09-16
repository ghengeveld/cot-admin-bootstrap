<?php

/* ====================
[BEGIN_COT_THEME]
Name=Bootstrap
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Theme for Cotonti based on Twitter Bootstrap
 *
 * @package Cotonti
 * @version 1.0
 * @author Gert Hengeveld
 * @copyright Webmojo
 * @license Apache License v2.0
 */

defined('COT_CODE') or die('Wrong URL');

$R['admin_code_missing'] = '<span class="label label-important">'.$L['adm_missing'].'</span>';
$R['admin_code_notinstalled'] = '<span class="label">'.$L['adm_notinstalled'].'</span>';
$R['admin_code_partrunning'] = '<span class="label label-success">'.$L['adm_partrunning'].'</span>';
$R['admin_code_paused'] = '<span class="label label-warning">'.$L['adm_paused'].'</span>';
$R['admin_code_present'] = '<span class="label label-info">'.$L['adm_present'].'</span>';
$R['admin_code_running'] = '<span class="label label-success">'.$L['adm_running'].'</span>';

$R['admin_icon_admin'] = '<img src="system/admin/img/admin.png">';
$R['admin_icon_allow'] = '<img src="system/admin/img/allow.png">';
$R['admin_icon_allow_locked'] = '<img src="system/admin/img/allow_locked.png">';

$R['admin_icon_auth_1'] = '<img src="system/admin/img/auth_1.png" alt="1" title="'.$L['Custom'].' 1">';
$R['admin_icon_auth_2'] = '<img src="system/admin/img/auth_2.png" alt="2" title="'.$L['Custom'].' 2">';
$R['admin_icon_auth_3'] = '<img src="system/admin/img/auth_3.png" alt="3" title="'.$L['Custom'].' 3">';
$R['admin_icon_auth_4'] = '<img src="system/admin/img/auth_4.png" alt="4" title="'.$L['Custom'].' 4">';
$R['admin_icon_auth_5'] = '<img src="system/admin/img/auth_5.png" alt="5" title="'.$L['Custom'].' 5">';
$R['admin_icon_auth_a'] = '<img src="system/admin/img/auth_a.png" alt="A" title="'.$L['Admin'].'">';
$R['admin_icon_auth_r'] = '<img src="system/admin/img/auth_r.png" alt="R" title="'.$L['Read'].'">';
$R['admin_icon_auth_w'] = '<img src="system/admin/img/auth_w.png" alt="W" title="'.$L['Write'].'">';

$R['breadcrumbs_container'] = '<ul class="breadcrumb">{$crumbs}</ul>';
$R['breadcrumbs_separator'] = '';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_crumb'] = '<li>{$crumb} <span class="divider">/</span></li>';
$R['breadcrumbs_first'] = '<li>{$crumb} <span class="divider">/</span></li>';
$R['breadcrumbs_last'] = '<li>{$crumb}</li>';

$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first'] = '<li class="pagenav_first"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap'] = '<li class="pagenav_pages">...</li>';
$R['link_pagenav_last'] = '<li class="pagenav_last"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main'] = '<li class="pagenav_pages"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="pagenav_next"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev'] = '<li class="pagenav_prev"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';

$R['input_checkbox'] = '<label class="checkbox"><input type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_default'] = '<input type="{$type}" name="{$name}" value="{$value}"{$attrs} /><span class="help-inline">{$error}</span>';
$R['input_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_radio'] = '<label class="radio"><input type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select name="{$name}"{$attrs}>{$options}</select><span class="help-inline">{$error}</span>';
$R['input_text'] = '<input type="text" name="{$name}" value="{$value}" {$attrs} /><span class="help-inline">{$error}</span>';
$R['input_textarea'] = '<textarea name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] =  '<textarea class="editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea><span class="help-block">{$error}</span>';
$R['input_textarea_medieditor'] =  '<textarea class="medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea><span class="help-block">{$error}</span>';
$R['input_textarea_minieditor'] =  '<textarea class="minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea><span class="help-block">{$error}</span>';
$R['input_file'] = '<span class="help-block"><a href="{$filepath}">{$value}</a></span><input type="file" name="{$name}" class="input-file" {$attrs} /><label class="checkbox"><input type="checkbox" name="{$delname}" value="1" /> '.$L['Delete'].'</label><span class="help-inline">{$error}</span>';
$R['input_file_empty'] = '<input type="file" name="{$name}" {$attrs} /><span class="help-inline">{$error}</span>';

$R['users_link_sort'] = '<a href="{$asc_url}" rel="nofollow"><i class="icon-circle-arrow-down"></i></a><a href="{$desc_url}" rel="nofollow"><i class="icon-circle-arrow-up"></i></a> {$text}';

$R['input_date'] =  '{$day} {$month} {$year}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$hour} : {$minute}';
$R['input_select_rpagebegin'] = '<select name="{$name}" class="input-small">{$options}</select>{$error}';
$R['input_select_rpageexpire'] = '<select name="{$name}" class="input-small">{$options}</select>{$error}';
$R['input_select_rpagefile'] = '<select name="{$name}" class="span2">{$options}</select>';

?>