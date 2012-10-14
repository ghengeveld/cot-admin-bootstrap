<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<h2>{PHP.L.Polls}</h2>

<div class="btn-toolbar">
  <div class="btn-group">
    <!-- BEGIN: POLLS_ROW_FILTER -->
    <a class="btn<!-- IF {ADMIN_POLLS_ROW_FILTER_CHECKED} --> active<!-- ENDIF -->" href="{ADMIN_POLLS_ROW_FILTER_VALUE}">{ADMIN_POLLS_ROW_FILTER_NAME}</a>
    <!-- END: POLLS_ROW_FILTER -->
  </div>
  <div class="btn-group" style="float:right;">
    <a class="btn" href="{ADMIN_POLLS_CONF_URL}"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
  </div>
</div>

<table class="table table-striped">
  <thead>
    <tr>
      <th>{PHP.L.Date}</th>
      <th>{PHP.L.Type}</th>
      <th>{PHP.L.Poll}</th>
      <th>{PHP.L.Votes}</th>
      <th>{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: POLLS_ROW -->
    <tr>
      <td>{ADMIN_POLLS_ROW_POLL_CREATIONDATE_STAMP|cot_date('date_text', $this)}</td>
      <td>{ADMIN_POLLS_ROW_POLL_TYPE}</td>
      <td>
        <!-- IF {ADMIN_POLLS_ROW_POLL_LOCKED} --><i class="icon-lock"></i><!-- ENDIF -->
        <a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a>
      </td>
      <td>{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
      <td>
        <div class="btn-group">
          <a class="btn btn-mini" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}"><i class="icon-share-alt"></i> {PHP.L.Open}</a>
          <a class="btn btn-mini" href="{ADMIN_POLLS_ROW_POLL_URL}"><i class="icon-pencil"></i> {PHP.L.Edit}</a>
          <a class="btn btn-mini" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}"><i class="icon-bullhorn"></i> {PHP.L.adm_polls_bump}</a>
          <!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
          <a class="btn btn-mini btn-warning" title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}"><i class="icon-lock icon-white"></i></a>
          <!-- ELSE -->
          <a class="btn btn-mini btn-success" title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}"><i class="icon-play icon-white"></i></a>
          <!-- ENDIF -->
          <a class="btn btn-mini btn-danger" title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}"><i class="icon-repeat icon-white"></i></a>
          <a class="btn btn-mini btn-danger" title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}"><i class="icon-remove icon-white"></i></a>
        </div>
      </td>
    </tr>
    <!-- END: POLLS_ROW -->
    <!-- BEGIN: POLLS_ROW_EMPTY -->
    <tr>
      <td colspan="5">{PHP.L.adm_polls_nopolls}</td>
    </tr>
    <!-- END: POLLS_ROW_EMPTY -->
  </tbody>
</table>

<div>{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_POLLS_ON_PAGE}</div>
<div class="pagination">
  {ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}
</div>

<h3>{ADMIN_POLLS_FORMNAME}:</h3>
<form action="{ADMIN_POLLS_FORM_URL}" method="post">
  {EDIT_POLL_IDFIELD}
  <label>{PHP.L.PollQuestion}:</label>
  {EDIT_POLL_TEXT}
  
  <label>{PHP.L.Options}:</label>
  <div id="options">
    <!-- BEGIN: OPTIONS -->
    <div class="input-append">
      {EDIT_POLL_OPTION_TEXT}<button class="btn deloption"><i class="icon-remove"></i></button>
    </div>
    <!-- END: OPTIONS -->
  </div>
  <button id="addoption" class="btn btn-mini"><i class="icon-plus"></i> {PHP.L.Add}</button>

  <div class="form-actions form-inline">
    <button type="submit" class="btn btn-primary">{ADMIN_POLLS_SEND_BUTTON}</button>
    &nbsp;&nbsp;{EDIT_POLL_MULTIPLE}
  </div>
</form>

<script type="text/javascript">
$(function(){
  $('#addoption').click(function(e){
    e.preventDefault();
    var opts = $('#options').children().length;
    if (opts < {PHP.cfg.polls.max_options_polls}) {
      $('#options div:last-child').clone().appendTo($('#options'));
      if (opts+1 == {PHP.cfg.polls.max_options_polls}) {
        $(this).addClass('disabled');
      }
    }
  });
  $('.deloption').live('click', function(e){
    e.preventDefault();
    $(this).parent().remove();
  });
});
</script>
  
<!-- END: MAIN -->