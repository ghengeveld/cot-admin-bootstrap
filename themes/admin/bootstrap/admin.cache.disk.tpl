<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<div class="btn-group" style="float:right;">
  <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="btn"><i class="icon-refresh"></i> {PHP.L.Refresh}</a>
  <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="btn btn-danger"><i class="icon-trash icon-white"></i> {PHP.L.adm_purgeall}</a>
</div>

<h2>Disk Cache</h2>

<table class="table table-striped table-condensed">
  <thead>
    <tr>
      <th>{PHP.L.Item}</th>
      <th style="width:20%;">{PHP.L.Files}</th>
      <th style="width:20%;">{PHP.L.Size}</th>
      <th style="width:65px;">{PHP.L.Delete}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
    <tr>
      <td><b>{ADMIN_DISKCACHE_ITEM_NAME}</b></td>
      <td>{ADMIN_DISKCACHE_FILES}</td>
      <td>{ADMIN_DISKCACHE_SIZE}</td>
      <td><a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.Delete}</a></td>
    </tr>
    <!-- END: ADMIN_DISKCACHE_ROW -->
  </tbody>
  <tfoot>
    <tr class="strong">
      <td>{PHP.L.Total}:</td>
      <td><b>{ADMIN_DISKCACHE_CACHEFILES|cot_declension($this, 'Files')}</b></td>
      <td><b>{ADMIN_DISKCACHE_CACHESIZE} {PHP.L.bytes}</b></td>
      <td></td>
    </tr>
  </tfoot>
</table>

<!-- END: MAIN -->