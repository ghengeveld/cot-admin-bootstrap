<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<h2>{PHP.L.Main}</h2>

<!-- BEGIN: UPDATE -->
<div class="alert alert-info">
  <h4 class="alert-heading">{PHP.L.adminqv_update_notice}:</h4>
  <p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
</div>
<!-- END: UPDATE -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<div class="row">
  <div class="span4">    
    <!-- BEGIN: MAINPANEL -->
    {ADMIN_HOME_MAINPANEL}
    <!-- END: MAINPANEL -->
  </div>
  
  <div class="span4">
    <table class="table table-condensed">
      <thead>
        <tr>
          <th colspan="2">Cotonti</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="width: 65%;">{PHP.L.Version}:</td>
          <td>{ADMIN_HOME_VERSION}</td>
        </tr>
        <tr>
          <td>{PHP.L.Plugins}:</td>
          <td>{ADMIN_HOME_TOTALPLUGINS}</td>
        </tr>
        <tr>
          <td>{PHP.L.Hooks}:</td>
          <td>{ADMIN_HOME_TOTALHOOKS}</td>
        </tr>
      </tbody>
    </table>
    <table class="table table-condensed">
      <thead>
        <tr>
          <th colspan="2">{PHP.L.Database}</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="width: 65%;">{PHP.L.Version}:</td>
          <td>{ADMIN_HOME_DB_VERSION}</td>
        </tr>
        <tr>
          <td>{PHP.L.home_db_rows}:</td>
          <td>{ADMIN_HOME_DB_TOTAL_ROWS}</td>
        </tr>
        <tr>
          <td>{PHP.L.home_db_indexsize}:</td>
          <td>{ADMIN_HOME_DB_INDEXSIZE}</td>
        </tr>
        <tr>
          <td>{PHP.L.home_db_datassize}:</td>
          <td>{ADMIN_HOME_DB_DATASSIZE}</td>
        </tr>
        <tr>
          <td>{PHP.L.home_db_totalsize}:</td>
          <td>{ADMIN_HOME_DB_TOTALSIZE}</td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="span4">
    <div class="well" style="padding: 8px 0;">
      <ul class="nav nav-list">
        <li class="nav-header"><i class="icon-cog"></i>{PHP.L.home_ql_b1_title}</li>
        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a></li>
        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a></li>
        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a></li>
        <li><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
        <!-- BEGIN: SIDEPANEL -->
        {ADMIN_HOME_SIDEPANEL}
        <!-- END: SIDEPANEL -->
      </ul>
    </div>
  </div>
</div>
<!-- END: MAIN -->