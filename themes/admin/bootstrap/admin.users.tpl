<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<!-- IF !{PHP.g} -->
<div class="btn-group" style="float:right;">
  <a class="btn" href="#newuser" title="{PHP.L.CreateNewUser}" data-toggle="modal">
    <i class="icon-plus"></i> {PHP.L.CreateNewUser}
  </a>
  <a class="btn" href="{PHP|cot_url('users')}" title="{PHP.L.ListAllUsers}">
    <i class="icon-share-alt"></i> {PHP.L.ListAllUsers}
  </a>
  <a class="btn" href="{ADMIN_USERS_EXTRAFIELDS_URL}" title="{PHP.L.ExtraFields}">
    <i class="icon-list-alt"></i> {PHP.L.ExtraFields}
  </a>
  <a class="btn" href="{ADMIN_USERS_URL}" title="{PHP.L.Configuration}">
    <i class="icon-cog"></i> {PHP.L.Configuration}
  </a>
</div>
<!-- ENDIF -->

<!-- BEGIN: ADMIN_USERS_DEFAULT -->

<h2>{PHP.L.Usergroups}</h2>

<table class="table table-striped table-condensed">
  <thead>
    <tr>
      <th>{PHP.L.Group}</th>
      <th style="width:70px;">{PHP.L.Members}</th>
      <th style="width:70px;">{PHP.L.Enabled}</th>
      <!-- IF {PHP.hidden_groups} -->
      <th style="width:70px;">{PHP.L.Hidden}</th>
      <!-- ENDIF -->
      <th style="width:70px;">{PHP.L.Level}</th>
      <th style="width:170px;">{PHP.L.Action}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: USERS_ROW -->
    <tr>
      <td>
        <a href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" title="{PHP.L.ListMaingroup}">
          #{ADMIN_USERS_ROW_GRP_ID}: {ADMIN_USERS_ROW_GRP_NAME}
        </a>
      </td>
      <td>{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
      <td>{ADMIN_USERS_ROW_GRP_DISABLED}</td>
      <!-- IF {PHP.hidden_groups} -->
      <td>{ADMIN_USERS_ROW_GRP_HIDDEN}</td>
      <!-- ENDIF -->
      <td>{PHP.row.grp_level}</td>
      <td>
        <div class="btn-group">
          <a class="btn btn-mini" title="{PHP.L.ListMaingroup}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}"><i class="icon-share-alt"></i></a>
          <a class="btn btn-mini" title="{PHP.L.ListGroup}" href="{ADMIN_USERS_ROW_GRP_ID|cot_url('users', 'gm=$this')}"><i class="icon-list"></i></a>
          <a class="btn btn-mini" title="{PHP.L.Edit}" href="{ADMIN_USERS_ROW_GRP_TITLE_URL}"><i class="icon-pencil"></i></a>

          <!-- IF {ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
          <a class="btn btn-mini disabled"><i class="icon-eye-open"></i> {PHP.L.short_rights}</a>
          <!-- ELSE -->
          <a class="btn btn-mini" title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}"><i class="icon-eye-open"></i> {PHP.L.short_rights}</a>
          <!-- ENDIF -->

          <!-- IF {ADMIN_USERS_ROW_GRP_ID} > 5 AND {ADMIN_USERS_ROW_GRP_COUNT_MEMBERS} == 0 -->
          <a class="btn btn-mini btn-danger" title="{PHP.L.Remove}" href="{ADMIN_USERS_ROW_GRP_ID|cot_url('admin', 'm=users&n=edit&a=delete&g=$this')}&x={PHP.sys.xk}"><i class="icon-remove icon-white"></i></a>
          <!-- ELSE -->
          <a class="btn btn-mini btn-danger disabled"><i class="icon-remove icon-white"></i></a>
          <!-- ENDIF -->
        </div>
      </td>
    </tr>
    <!-- END: USERS_ROW -->
  </tbody>
</table>

<h3>{PHP.L.AddGroup}</h3>
<form action="{ADMIN_USERS_FORM_URL}" method="post">
  <div class="row">
    <div class="span5">
      <h4>&nbsp;</h4>
      <div class="row">
        <div class="span2">
          <label>{PHP.L.GroupName}:</label>
          <input type="text" name="rname" value="{PHP.rgroups.grp_name}" maxlength="64" class="span2">
        </div>
        <div class="span2">
          <label>{PHP.L.Title}:</label>
          <input type="text" name="rtitle" value="{PHP.rgroups.grp_title}" maxlength="64" class="span2">
        </div>
        <div class="span1">
          <label>{PHP.L.Level}:</label>
          <select name="rlevel" class="span1">
            <!-- FOR {I} IN {PHP|range(0,99)} -->
            <option value="{I}"<!-- IF {I} == 1 --> selected="selected"<!-- ENDIF -->>{I}</option>
            <!-- ENDFOR -->
          </select>
        </div>
      </div>
      <label>{PHP.L.Description}:</label>
      <input type="text" name="rdesc" value="{PHP.rgroups.grp_desc}" maxlength="64" class="span5">
      <div class="row">
        <div class="span3">
          <label>{PHP.L.Icon}:</label>
          <input type="text" name="ricon" value="{PHP.rgroups.grp_icon}" maxlength="128" class="span3">
        </div>
        <div class="span2">
          <label>{PHP.L.Alias}:</label>
          <input type="text" name="ralias" value="{PHP.rgroups.grp_alias}" maxlength="24" class="span2">
        </div>
      </div>
      <div class="row" style="padding-top:10px;">
        <div class="span2">
          <label>{PHP.L.DisableRights}:</label>
          <label class="radio inline"><input type="radio" name="rskiprights" value="1"> {PHP.L.Yes}</label>
          <label class="radio inline"><input type="radio" name="rskiprights" value="0" checked="checked"> {PHP.L.No}</label>
        </div>
        <div class="span3">
          <label>{PHP.L.adm_copyrightsfrom}:</label>
          {ADMIN_USERS_FORM_SELECTBOX_GROUPS}
        </div>
      </div>
      <div class="row">
        <div class="span5 help-text">
          {PHP.L.DisableRightsInfo}
        </div>
      </div>
    </div>
    <div class="span3">
      <h4>&nbsp;</h4>
      <div class="row">
        <div class="span3">
          <div>{PHP.L.DisableGroup}:</div>
          <label class="radio inline"><input type="radio" name="rdisabled" value="1"> {PHP.L.Yes}</label>
          <label class="radio inline"><input type="radio" name="rdisabled" value="0" checked="checked"> {PHP.L.No}</label>
          <div class="help-text">{PHP.L.DisableGroupInfo}</div>
        </div>
      </div>
      <div class="row" style="margin-top:10px;">
        <div class="span3">
          <div>{PHP.L.MaintenanceAccess}:</div>
          <label class="radio inline"><input type="radio" name="rmtmode" value="1"> {PHP.L.Yes}</label>
          <label class="radio inline"><input type="radio" name="rmtmode" value="0" checked="checked"> {PHP.L.No}</label>
          <div class="help-text">{PHP.L.MaintenanceAccessInfo}</div>
        </div>
      </div>
      <!-- IF {PHP.hidden_groups} -->
      <div class="row" style="margin-top:10px;">
        <div class="span3">
          <div>{PHP.L.HideGroup}:</div>
          <label class="radio inline"><input type="radio" name="rhidden" value="1"> {PHP.L.Yes}</label>
          <label class="radio inline"><input type="radio" name="rhidden" value="0" checked="checked"> {PHP.L.No}</label>
          <div class="help-text">{PHP.L.HideGroupInfo}</div>
        </div>
      </div>
      <!-- ENDIF -->
    </div>
    <div class="span4">
      <!-- IF {PHP.pfs_is_active} -->
      <h4>{PHP.L.PFS}</h4>
      <div class="row">
        <div class="span2">
          <label>{PHP.L.MaxFileSize}:</label>
          <div class="input-append">
            <input type="text" name="rmaxfile" value="1000" maxlength="16" style="width:100px;"><span class="add-on">kb</span>
          </div>
        </div>
        <div class="span2">
          <label>{PHP.L.FileSpace}:</label>
          <div class="input-append">
            <input type="text" name="rmaxtotal" value="1000" maxlength="16" style="width:100px;"><span class="add-on">kb</span>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="span4 help-text">
          {PHP.L.FileSpaceInfo}
        </div>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
  <div class="form-actions">
    <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
    <button type="reset" class="btn">{PHP.L.Reset}</button>
  </div>
</form>

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/admin.users.register.tpl"}

<script type="text/javascript">
$(function(){
  $('input[name=rname]').keyup(function(){
    $('input[name=ralias]').val($(this).val().toLowerCase());
  });
});
</script>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
<div class="btn-group" style="float:right;">
  <a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}" class="btn"><i class="icon-share-alt"></i> {PHP.L.Open}</a>
  <!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
  <a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn"><i class="icon-eye-open"></i> {PHP.L.Rights}</a>
  <!-- ENDIF -->
  <!-- IF {PHP.g} > 5 -->
  <a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="btn btn-danger"><i class="icon-remove icon-white"></i> {PHP.L.RemoveGroup}</a>
  <!-- ENDIF -->
</div>

<h2>{PHP.L.Group}: {PHP.row.grp_name}</h2>
<p>{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT|cot_declension($this, 'Users')} {PHP.L.InThisGroup}</p>

<form action="{ADMIN_USERS_EDITFORM_URL}" method="post">
  <div class="row">
    <div class="span5">
      <h4>&nbsp;</h4>
      <div class="row">
        <div class="span2">
          <label>{PHP.L.GroupName}:</label>
          <input type="text" name="rname" value="{PHP.row.grp_name}" maxlength="64" class="span2">
        </div>
        <div class="span2">
          <label>{PHP.L.Title}:</label>
          <input type="text" name="rtitle" value="{PHP.row.grp_title}" maxlength="64" class="span2">
        </div>
        <div class="span1">
          <label>{PHP.L.Level}:</label>
          <select name="rlevel" class="span1">
            <!-- FOR {I} IN {PHP|range(0,99)} -->
            <option value="{I}"<!-- IF {I} == {PHP.row.grp_level} --> selected="selected"<!-- ENDIF -->>{I}</option>
            <!-- ENDFOR -->
          </select>
        </div>
      </div>
      <label>{PHP.L.Description}:</label>
      <input type="text" name="rdesc" value="{PHP.row.grp_desc}" maxlength="64" class="span5">
      <div class="row">
        <div class="span3">
          <label>{PHP.L.Icon}:</label>
          <input type="text" name="ricon" value="{PHP.row.grp_icon}" maxlength="128" class="span3">
        </div>
        <div class="span2">
          <label>{PHP.L.Alias}:</label>
          <input type="text" name="ralias" value="{PHP.row.grp_alias}" maxlength="24" class="span2">
        </div>
      </div>
      <div class="row" style="padding-top:10px;">
        <div class="span2">
          <label>{PHP.L.DisableRights}:</label>
          <label class="radio inline"><input type="radio" name="rskiprights" value="1"<!-- IF {PHP.row.grp_skiprights} --> checked="checked"<!-- ENDIF -->> {PHP.L.Yes}</label>
          <label class="radio inline"><input type="radio" name="rskiprights" value="0"<!-- IF !{PHP.row.grp_skiprights} --> checked="checked"<!-- ENDIF -->> {PHP.L.No}</label>
        </div>
        <div class="span3 help-text">
          {PHP.L.DisableRightsInfo}
        </div>
      </div>
    </div>
    <div class="span3">
      <h4>&nbsp;</h4>
      <div class="row">
        <div class="span3">
          <div>{PHP.L.DisableGroup}:</div>
          <label class="radio inline"><input type="radio" name="rdisabled" value="1"<!-- IF {PHP.row.grp_disabled} --> checked="checked"<!-- ENDIF -->> Yes</label>
          <label class="radio inline"><input type="radio" name="rdisabled" value="0"<!-- IF !{PHP.row.grp_disabled} --> checked="checked"<!-- ENDIF -->> No</label>
          <div class="help-text">{PHP.L.DisableGroupInfo}</div>
        </div>
      </div>
      <div class="row" style="margin-top:10px;">
        <div class="span3">
          <div>{PHP.L.MaintenanceAccess}:</div>
          <label class="radio inline"><input type="radio" name="rmtmode" value="1"<!-- IF {PHP.row.grp_maintenance} --> checked="checked"<!-- ENDIF -->> Yes</label>
          <label class="radio inline"><input type="radio" name="rmtmode" value="0"<!-- IF !{PHP.row.grp_maintenance} --> checked="checked"<!-- ENDIF -->> No</label>
          <div class="help-text">{PHP.L.MaintenanceAccessInfo}</div>
        </div>
      </div>
      <!-- IF {PHP.hidden_groups} -->
      <div class="row" style="margin-top:10px;">
        <div class="span3">
          <div>{PHP.L.HideGroup}:</div>
          <label class="radio inline"><input type="radio" name="rhidden" value="1"<!-- IF {PHP.row.grp_hidden} --> checked="checked"<!-- ENDIF -->> Yes</label>
          <label class="radio inline"><input type="radio" name="rhidden" value="0"<!-- IF !{PHP.row.grp_hidden} --> checked="checked"<!-- ENDIF -->> No</label>
          <div class="help-text">{PHP.L.HideGroupInfo}</div>
        </div>
      </div>
      <!-- ENDIF -->
    </div>
    <div class="span4">
      <!-- IF {PHP.pfs_is_active} -->
      <h4>{PHP.L.PFS}</h4>
      <div class="row">
        <div class="span2">
          <label>{PHP.L.MaxFileSize}:</label>
          <div class="input-append">
            <input type="text" name="rmaxfile" value="{PHP.row.grp_pfs_maxfile}" maxlength="16" style="width:100px;"><span class="add-on">kb</span>
          </div>
        </div>
        <div class="span2">
          <label>{PHP.L.FileSpace}:</label>
          <div class="input-append">
            <input type="text" name="rmaxtotal" value="{PHP.row.grp_pfs_maxtotal}" maxlength="16" style="width:100px;"><span class="add-on">kb</span>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="span4 help-text">
          {PHP.L.FileSpaceInfo}
        </div>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
  <div class="form-actions">
    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
    <button type="reset" class="btn">{PHP.L.Reset}</button>
  </div>
</form>
<!-- END: ADMIN_USERS_EDIT -->

<script type="text/javascript">
$(function(){
  $('input[name=rname]').keyup(function(){
    $('input[name=ralias]').val($(this).val().toLowerCase());
  });
  $('input[name=rskiprights]').click(function(){
    if ($(this).val() == 1){
      $('select[name=rcopyrightsfrom]').attr('disabled', 'disabled');
    } else {
      $('select[name=rcopyrightsfrom]').removeAttr('disabled');
    }
  });
});
</script>

<!-- END: MAIN -->