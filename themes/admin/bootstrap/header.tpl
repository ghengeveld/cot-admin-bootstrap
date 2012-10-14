<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="generator" content="Cotonti http://www.cotonti.com">
<meta http-equiv="expires" content="Fri, Apr 01 1974 00:00:00 GMT">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{HEADER_BASEHREF}
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="{PHP.cfg.themes_dir}/admin/bootstrap/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="{PHP.cfg.themes_dir}/admin/bootstrap/css/bootstrap-responsive.css" type="text/css">
<link rel="stylesheet" href="{PHP.cfg.themes_dir}/admin/bootstrap/css/admin.css" type="text/css">
<title>{HEADER_TITLE}</title>
<script src="js/jquery.min.js"></script>
<script src="{PHP.cfg.themes_dir}/admin/bootstrap/js/bootstrap.js"></script>
</head>
<body>
  <div class="navbar navbar-static-top">
    <div class="navbar-inner">
      <div class="container">
        <a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}" class="brand">{PHP.cfg.maintitle}</a>
        <div class="btn-group pull-right">
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="icon-user"></i> {PHP.usr.name}
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="{PHP|cot_url('users','m=profile')}">{PHP.L.Profile}</a></li>
            <li><a href="{PHP|cot_url('pm')}">{PHP.L.Private_Messages}<!-- IF {PHP.usr.messages} > 0 --> ({PHP.usr.messages})<!-- ENDIF --></a></li>
            <li class="divider"></li>
            <li><a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this')}">{PHP.L.Logout}</a></li>
          </ul>
        </div>
        <div class="nav-collapse">
          <ul class="nav">
            <li class="<!-- IF !{PHP.m} -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin')}" title="{PHP.L.Administration}">{PHP.L.Home}</a></li>
            <li class="<!-- IF {PHP.m} == 'config' -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}">{PHP.L.Configuration}</a></li>
            <li class="<!-- IF {PHP.m} == 'structure' -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}">{PHP.L.Structure}</a></li>
            <li class="<!-- IF {PHP.m} == 'extensions' -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}">{PHP.L.Extensions}</a></li>
            <li class="<!-- IF {PHP.m} == 'users' OR {PHP.env.ext} == 'users' -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}">{PHP.L.Users}</a></li>
            <li class="<!-- IF {PHP.m} == 'other' -->active<!-- ENDIF -->"><a href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}">{PHP.L.Other}</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

<!-- END: HEADER -->