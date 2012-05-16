<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<h2>{PHP.L.Rights}</h2>

<div class="row">
  <div class="span8">
    <!-- IF {PHP.advanced} -->
    <a href="{PHP.g|cot_url('admin', 'm=rights&g=$this')}" class="btn btn-mini" style="float:right;"><i class="icon-minus-sign"></i> {PHP.L.HideCustomRights}</a>
    <!-- ELSE -->
    <a href="{ADMIN_RIGHTS_ADVANCED_URL}" class="btn btn-mini" style="float:right;"><i class="icon-plus-sign"></i> {PHP.L.ShowCustomRights}</a>
    <!-- ENDIF -->
    <form action="{ADMIN_RIGHTS_FORM_URL}" method="post">
      <!-- BEGIN: RIGHTS_SECTION -->
      <h3>{RIGHTS_SECTION_TITLE}:</h3>
      <table class="table table-striped table-condensed">
        <thead>
          <tr>
            <th rowspan="2">{PHP.L.Section}</th>
            <th colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</th>
            <th rowspan="2" style="width:110px;">{PHP.L.adm_setby}</th>
            <th rowspan="2" style="width:90px;">{PHP.L.Options}</th>
          </tr>
          <tr>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_r.png" alt="R" title="{PHP.L.Read}"></th>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_w.png" alt="W" title="{PHP.L.Write}"></th>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_1.png" alt="1" title="{PHP.L.Custom} #1"></th>
            <!-- IF {PHP.advanced} -->
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_2.png" alt="2" title="{PHP.L.Custom} #2"></th>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_3.png" alt="3" title="{PHP.L.Custom} #3"></th>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_4.png" alt="4" title="{PHP.L.Custom} #4"></th>
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_5.png" alt="5" title="{PHP.L.Custom} #5"></th>
            <!-- ENDIF -->
            <th style="width:25px; text-align:center;"><img src="system/admin/img/auth_a.png" alt="A" title="{PHP.L.Administration}"></th>
          </tr>
        </thead>
        <tbody>
          <!-- BEGIN: RIGHTS_ROW -->
          <tr>
            <td>
              <a href="{ADMIN_RIGHTS_ROW_LINK}">
                <!-- IF {ADMIN_RIGHTS_ROW_ICO} --> 
                <img src="{ADMIN_RIGHTS_ROW_ICO}" width="20" height="20">
                <!-- ELSE -->
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" width="20" height="20">
                <!-- ENDIF -->
                {ADMIN_RIGHTS_ROW_TITLE}
              </a>
            </td>
            <!-- BEGIN: RIGHTS_ROW_ITEMS -->
            <td style="width:25px; text-align:center;">
              <!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
              <input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1">
              {PHP.R.admin_icon_discheck1}
              <!-- ENDIF -->
              <!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
              {PHP.R.admin_icon_discheck0}
              <!-- ENDIF -->
              <!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
              <input type="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED}>
              <!-- ENDIF -->
            </td>
            <!-- END: RIGHTS_ROW_ITEMS -->
            <td>{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</td>
            <td>
              <div class="btn-group">
                <a title="{PHP.L.Open} &quot;{ADMIN_RIGHTS_ROW_TITLE}&quot;" href="{ADMIN_RIGHTS_ROW_LINK}" class="btn btn-mini"><i class="icon-share-alt"></i></a>
                <a title="{PHP.L.RightsFor} &quot;{ADMIN_RIGHTS_ROW_TITLE}&quot;" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="btn btn-mini"><i class="icon-eye-open"></i> {PHP.L.Rights}</a>
              </div>
            </td>
          </tr>
          <!-- END: RIGHTS_ROW -->
        </tbody>
      </table>
      <!-- END: RIGHTS_SECTION -->
      <div class="form-actions">
        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
        <button type="reset" class="btn">{PHP.L.Reset}</button>
      </div>
    </form>
  </div>
  <div class="span4">
    <!-- IF {PHP.g} > 5 -->
    <form action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="form-horizontal">
      <input type="hidden" name="ncopyrightsconf" value="1">
      <p>{PHP.L.CopyRightsFromGroup}:</p>
      {ADMIN_RIGHTS_SELECTBOX_GROUPS}
      <button type="submit" class="btn">{PHP.L.Copy}</button>
      <p style="font-size:0.85em; margin:10px 0;"><i class="icon-warning-sign"></i> {PHP.L.CopyRightsInfo}</p>
    </form>
    <hr>
    <!-- ENDIF -->
    <p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
    <p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
    <p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
    <!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
    <p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
    <p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
    <p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
    <p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
  </div>
</div>
<!-- END: MAIN -->