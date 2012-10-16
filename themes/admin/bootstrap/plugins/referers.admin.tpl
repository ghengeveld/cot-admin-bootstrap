<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<!-- IF {PHP.usr.isadmin} -->
<div class="btn-toolbar pull-right">
  <a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn"><i class="icon-trash"></i> {PHP.L.PruneLowHits}</a>
  <a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.PurgeAll}</a>
</div>
<!-- ENDIF -->

<h2>{PHP.L.Referers}</h2>

<!-- IF {PHP.is_ref_empty} -->
<table class="table table-condensed table-bordered">
  <thead>
    <tr>
      <th>{PHP.L.Referer}</th>
      <th>{PHP.L.Hits}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: REFERERS_ROW -->
    <tr>
      <th colspan="2">
        <a href="http://{ADMIN_REFERERS_REFERER}" rel="nofollow">{ADMIN_REFERERS_REFERER}</a>
      </th>
    </tr>
    <!-- BEGIN: REFERERS_URI -->
    <tr>
      <td>
        &nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}" rel="nofollow">{ADMIN_REFERERS_URI}</a>
      </td>
      <td>{ADMIN_REFERERS_COUNT}</td>
    </tr>
    <!-- END: REFERERS_URI -->
    <!-- END: REFERERS_ROW -->
  </tbody>
</table>
<!-- ENDIF -->

<!-- IF {ADMIN_REFERERS_PAGNAV} -->
<span>{PHP.L.Total} : {ADMIN_REFERERS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_REFERERS_ON_PAGE}</span>
<div class="pagination">
  {ADMIN_REFERERS_PAGINATION_PREV} {ADMIN_REFERERS_PAGNAV} {ADMIN_REFERERS_PAGINATION_NEXT}
</div>
<!-- ENDIF -->

<!-- END: MAIN -->