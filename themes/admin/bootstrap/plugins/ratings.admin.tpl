<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<h2>{PHP.L.Ratings}</h2>

<div class="btn-toolbar">
  <a href="{ADMIN_RATINGS_URL_CONFIG}" class="btn"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
</div>

<table class="table table-condensed table-striped">
  <thead>
    <tr>
      <th>{PHP.L.adm_area}</th>
      <th>{PHP.L.Code}</th>
      <th>{PHP.L.Date} (GMT)</th>
      <th>{PHP.L.Votes}</th>
      <th>{PHP.L.Rating}</th>
      <th>{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: RATINGS_ROW -->
    <tr>
      <td>{ADMIN_RATINGS_ROW_RATING_AREA}</td>
      <td>{ADMIN_RATINGS_ROW_RATING_CODE}</td>
      <td>{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
      <td>{ADMIN_RATINGS_ROW_VOTES}</td>
      <td>{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
      <td>
        <!-- IF {ADMIN_RATINGS_ROW_RAT_URL} -->
        <a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-mini"><i class="icon-share-alt"></i> {PHP.L.Open}</a>
        <!-- ENDIF -->
        <a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.Delete}</a>
      </td>
    </tr>
    <!-- END: RATINGS_ROW -->
  </tbody>
</table>

<div>{PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</div>
<div>{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_RATINGS_ON_PAGE}</div>
<!-- IF {ADMIN_RATINGS_PAGNAV} -->
<div class="pagination">
  {ADMIN_RATINGS_PAGINATION_PREV} {ADMIN_RATINGS_PAGNAV} {ADMIN_RATINGS_PAGINATION_NEXT}
</div>
<!-- ENDIF -->

<!-- END: MAIN -->