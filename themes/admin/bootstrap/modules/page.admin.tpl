<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<div class="btn-toolbar">
  <div class="btn-group">
    <a class="btn<!-- IF {PHP.filter} == 'all' --> active<!-- ENDIF -->" href="{PHP|cot_url('admin', 'm=page&filter=all')}"><i class="icon-asterisk"></i> {PHP.L.All}</a>
    <a class="btn<!-- IF {PHP.filter} == 'valqueue' --> active<!-- ENDIF -->" href="{PHP|cot_url('admin', 'm=page&filter=valqueue')}"><i class="icon-pause"></i> {PHP.L.Pending}</a>
    <a class="btn<!-- IF {PHP.filter} == 'validated' --> active<!-- ENDIF -->" href="{PHP|cot_url('admin', 'm=page&filter=validated')}"><i class="icon-ok"></i> {PHP.L.Approved}</a>
  </div>
  <div class="btn-group" style="float:right;">
    <a class="btn" href="{ADMIN_PAGE_URL_CONFIG}"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
    <a class="btn" href="{ADMIN_PAGE_URL_EXTRAFIELDS}"><i class="icon-list-alt"></i> {PHP.L.ExtraFields}</a>
    <a class="btn" href="{ADMIN_PAGE_URL_STRUCTURE}"><i class="icon-list"></i> {PHP.L.Categories}</a>
    <a class="btn" href="{ADMIN_PAGE_URL_ADD}"><i class="icon-plus"></i> {PHP.L.page_addtitle}</a>
  </div>
</div>

<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->
<div style="float:right;">
  <form action="{PHP|cot_url('admin')}" class="form-horizontal">
    {PHP.L.SortBy}: 
    <input type="hidden" name="m" value="page">
    <input type="hidden" name="filter" value="{PHP.filter}">
    <select name="sorttype" class="span2">
      <!-- FOR {K}, {V} IN {PHP.sort_type} -->
      <option value="{K}">{V}</option>
      <!-- ENDFOR -->
    </select>
    <select name="sortway" class="span2">
      <option value="asc">Ascending</option>
      <option value="desc" selected="selected">Descending</option>
    </select>
    <button type="submit" class="btn">{PHP.L.Go}</button>
  </form>
</div>
<!-- ENDIF -->

<h2>
  <!-- IF {PHP.filter} == 'all' -->{PHP.L.AllPages}<!-- ENDIF -->
  <!-- IF {PHP.filter} == 'valqueue' -->{PHP.L.PendingPages}<!-- ENDIF -->
  <!-- IF {PHP.filter} == 'validated' -->{PHP.L.ValidatedPages}<!-- ENDIF -->
</h2>

<form method="post" action="{ADMIN_PAGE_FORM_URL}">
  <table class="table table-striped table-condensed">
    <thead>
      <tr>
        <th style="width:15px;"><input type="checkbox" class="checkbox" onclick="$(':checkbox').attr('checked', this.checked);" /></th>
        <th style="width:20px;">{PHP.L.Id}</th>
        <th>{PHP.L.Title}</th>
        <th style="width:175px;">{PHP.L.Category}</th>
        <th style="width:175px;">{PHP.L.Alias}</th>
        <th style="width:125px;">{PHP.L.Status}</th>
        <th style="width:150px;">{PHP.L.Action}</th>
      </tr>
    </thead>
    <tbody>
      <!-- BEGIN: PAGE_ROW -->
      <tr class="{ADMIN_PAGE_ODDEVEN}">
        <td><input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox"></td>
        <td>{ADMIN_PAGE_ID}</td>
        <td>{ADMIN_PAGE_SHORTTITLE}</td>
        <td>{ADMIN_PAGE_CATPATH_SHORT}</td>
        <td>{ADMIN_PAGE_ALIAS}</td>
        <td>
          <!-- IF {ADMIN_PAGE_STATUS} == 'draft' --><i class="icon-tint"></i><!-- ENDIF -->
          <!-- IF {ADMIN_PAGE_STATUS} == 'pending' --><i class="icon-inbox"></i><!-- ENDIF -->
          <!-- IF {ADMIN_PAGE_STATUS} == 'approved' --><i class="icon-time"></i><!-- ENDIF -->
          <!-- IF {ADMIN_PAGE_STATUS} == 'published' --><i class="icon-eye-open"></i><!-- ENDIF -->
          <!-- IF {ADMIN_PAGE_STATUS} == 'expired' --><i class="icon-eye-close"></i><!-- ENDIF -->
          {ADMIN_PAGE_LOCALSTATUS}
        </td>
        <td>
          <div class="btn-group">
            <!-- IF {ADMIN_PAGE_STATUS} == 'expired' -->
            <a class="btn btn-mini disabled"><i class="icon-share-alt"></i> {PHP.L.Open}</a>
            <!-- ELSE -->
            <a class="btn btn-mini" title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}"><i class="icon-share-alt"></i> {PHP.L.Open}</a>
            <!-- ENDIF -->
            
            <!-- IF {ADMIN_PAGE_STATUS} == 'draft' AND {PHP.row.page_ownerid} != {PHP.usr.id} -->
            <a class="btn btn-mini disabled"><i class="icon-pencil"></i></a>
            <!-- ELSE -->
            <a class="btn btn-mini" title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}"><i class="icon-pencil"></i></a>
            <!-- ENDIF -->
            
            <!-- IF {ADMIN_PAGE_STATUS} == 'draft' -->
            <a class="btn btn-mini btn-success disabled"><i class="icon-ok icon-white"></i></a>
            <!-- ENDIF -->
            <!-- IF {ADMIN_PAGE_STATUS} == 'pending' -->
            <a class="btn btn-mini btn-success" title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}"><i class="icon-ok icon-white"></i></a>
            <!-- ENDIF -->
            <!-- IF {ADMIN_PAGE_STATUS} == 'approved' OR {ADMIN_PAGE_STATUS} == 'published' -->
            <a class="btn btn-mini btn-warning" title="{PHP.L.Unvalidate}" href="{ADMIN_PAGE_URL_FOR_UNVALIDATE}"><i class="icon-pause icon-white"></i></a>
            <!-- ENDIF -->
            <!-- IF {ADMIN_PAGE_STATUS} == 'expired' -->
            <a class="btn btn-mini btn-warning disabled"><i class="icon-pause icon-white"></i></a>
            <!-- ENDIF -->
            
            <a class="btn btn-mini btn-danger" title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}"><i class="icon-remove icon-white"></i></a>
          </div>
        </td>
      </tr>
      <!-- END: PAGE_ROW -->
      <!-- IF {PHP.is_row_empty} -->
      <tr>
        <td colspan="7">{PHP.L.None}</td>
      </tr>
      <!-- ENDIF -->
    </tbody>
  </table>
  <p>{PHP.L.WithSelected}:</p>
  <!-- IF {PHP.filter} != {PHP.L.adm_validated} --><button type="submit" class="btn btn-success" name="paction" value="{PHP.L.Validate}"><i class="icon-ok icon-white"></i> {PHP.L.Validate}</button><!-- ENDIF -->
  <button type="submit" class="btn btn-danger" name="paction" value="{PHP.L.Delete}"><i class="icon-remove icon-white"></i> {PHP.L.Delete}</button>
</form>

<div class="pagination">
  {ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}
</div>

<!-- END: MAIN -->