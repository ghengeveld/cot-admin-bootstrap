<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<div class="btn-toolbar pull-right">
  <a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
  <a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.Wipeall}</a>
</div>

<h2>{PHP.L.Trashcan}</h2>

<table class="table table-condensed table-striped">
  <thead>
    <tr>
      <th>{PHP.L.Type}</th>
      <th>{PHP.L.Date}</th>
      <th>{PHP.L.Title}</th>
      <th>{PHP.L.adm_setby}</th>
      <th>{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: TRASHCAN_ROW -->
    <tr>
      <td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
      <td>{ADMIN_TRASHCAN_DATE}</td>
      <td><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
      <td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
      <td>
        <!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
        <a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-mini btn-success"><i class="icon-repeat icon-white"></i> {PHP.L.Restore}</a>
        <!-- ENDIF -->
        <a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.Wipe}</a>
      </td>
    </tr>
    <!-- END: TRASHCAN_ROW -->
  </tbody>
</table>
<p class="paging">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TRASHCAN_COUNTER_ROW}</span></p>
<!-- END: MAIN -->