<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<h2>{PHP.L.Log}</h2>

<div class="btn-toolbar">
  <div class="btn-group">
    <!-- FOR {K}, {V} IN {PHP.log_groups} -->
    <a class="btn<!-- IF {K} == {PHP.n} --> active<!-- ENDIF -->" href="{K|cot_url('admin', 'm=log&n=$this')}">{V}</a>
    <!-- ENDFOR -->
  </div>
  <!-- IF {PHP.usr.isadmin} -->
  <div class="btn-group" style="float:right;">
    <a class="btn" href="{PHP.n|cot_url('admin', 'm=log&n=$this')}"><i class="icon-refresh"></i> {PHP.L.Refresh}</a>
    <a class="btn btn-danger" href="{ADMIN_LOG_URL_PRUNE}"><i class="icon-trash icon-white"></i> {PHP.L.adm_purgeall}</a>
  </div>
  <!-- ENDIF -->
</div>

<table class="table table-condensed table-striped">
  <thead>
    <tr>
      <th>#</th>
      <th>{PHP.L.Date}</th>
      <th>{PHP.L.Ip}</th>
      <th>{PHP.L.User}</th>
      <th>{PHP.L.Group}</th>
      <th>{PHP.L.Log}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: LOG_ROW -->
    <tr>
      <td>{ADMIN_LOG_ROW_LOG_ID}</td>
      <td>{ADMIN_LOG_ROW_DATE_STAMP|cot_date('datetime_text', $this, false)}</td>
      <td>{ADMIN_LOG_ROW_LOG_IP|cot_build_ipsearch($this)}</td>
      <td>{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
      <td><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
      <td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
    </tr>
    <!-- END: LOG_ROW -->
  </tbody>
</table>

<div>{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</div>
<div class="pagination">
  {ADMIN_LOG_PAGINATION_PREV} {ADMIN_LOG_PAGNAV} {ADMIN_LOG_PAGINATION_NEXT}
</div>

<!-- END: MAIN -->