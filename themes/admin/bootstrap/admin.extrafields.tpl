<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<!-- BEGIN: TABLELIST -->
<!-- IF {PHP._GET.alltables} -->
<a class="btn" style="float:right;" href="{PHP|cot_url('admin', 'm=extrafields')}"><i class="icon-zoom-out"></i> {PHP.L.ShowRelatedTables}</a>
<!-- ELSE -->
<a class="btn" style="float:right;" href="{ADMIN_EXTRAFIELDS_ALLTABLES}"><i class="icon-zoom-in"></i> {PHP.L.ShowAllTables}</a>
<!-- ENDIF -->

<h2>{PHP.L.ExtraFields}</h2>

<div class="row">
  <div class="span6">
    <table class="table">
      <thead>
        <tr>
          <th style="width:50%;">{PHP.L.TableName}</th>
          <th>{PHP.L.BelongsTo}</th>
        </tr>
      </thead>
      <!-- BEGIN: ROW -->	
      <tr>
        <td><a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}">{ADMIN_EXTRAFIELDS_ROW_TABLE}</a></td>
        <td>{ADMIN_EXTRAFIELDS_ROW_ITEMNAME}<!-- IF {ADMIN_EXTRAFIELDS_ROW_TYPE} --> ({ADMIN_EXTRAFIELDS_ROW_TYPE})<!-- ENDIF --></td>
      </tr>
      <!-- END: ROW -->
    </table>
  </div>
</div>
<!-- END: TABLELIST -->

<!-- BEGIN: TABLE -->	

	<form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
		<table class="table">
      <thead>
        <tr>
          <th></th>
          <th>{PHP.L.extf_Name}</th>
          <th>{PHP.L.extf_Type}</th>
          <th>{PHP.L.adm_extrafield_params}</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <!-- BEGIN: EXTRAFIELDS_ROW -->	
        <tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
          <td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
            {ADMIN_EXTRAFIELDS_ROW_ENABLED}
          </td>
          <td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
              {ADMIN_EXTRAFIELDS_ROW_NAME}
            <p class="small">{PHP.L.extf_Description}</p>
              {ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
            <p class="small">{PHP.L.extf_Base_HTML}</p>
              {ADMIN_EXTRAFIELDS_ROW_HTML}
          </td>
          <td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
              {ADMIN_EXTRAFIELDS_ROW_SELECT}
            <p class="small">{PHP.L.adm_extrafield_parse}</p>
              {ADMIN_EXTRAFIELDS_ROW_PARSE}
            <p class="small">{ADMIN_EXTRAFIELDS_ROW_REQUIRED}{PHP.L.adm_extrafield_required}</p>

          </td>
          <td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
            {ADMIN_EXTRAFIELDS_ROW_PARAMS}
            <p class="small">{PHP.L.adm_extrafield_selectable_values}</p>
              {ADMIN_EXTRAFIELDS_ROW_VARIANTS}						
            <p class="small">{PHP.L.adm_extrafield_default}</p>
              {ADMIN_EXTRAFIELDS_ROW_DEFAULT}
          </td>
          <td class="centerall {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">

            <a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax button">{PHP.L.Delete}</a>
          </td>
        </tr>
        <!-- END: EXTRAFIELDS_ROW -->
      </tbody>
      <tfoot>
        <tr>
          <td colspan="5">
            <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
          </td>
        </tr>
      </tfoot>
		</table>
	</form>
  <!-- IF {PHP.pagenav.total} > 1 -->
	<div class="pagination">
    {ADMIN_EXTRAFIELDS_PAGNAV}
  </div>
  <p>{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_COUNTER_ROW}</p>
  <!-- ENDIF -->

	<h3>{PHP.L.adm_extrafield_new}:</h3>
  <form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
    <input type="hidden" name="field_params" id="extf_field_params" value="">
    <input type="hidden" name="field_variants" id="extf_field_variants" value="">
    <div class="row">
      <div class="span4">
        <div class="row">
          <div class="span4">
            <label>{PHP.L.ExtfTitle}:</label>
            <input type="text" class="span4" name="field_description" id="extf_field_description" value="">
            <div class="help-text below">{PHP.L.ExtfTitleInfo}</div>
          </div>
        </div>
        <div class="row">
          <div class="span2">
            <label for="extf_field_name">{PHP.L.ExtfCode}:</label>
            <input type="text" class="span2" name="field_name" id="extf_field_name" value="">
            <div class="help-text below">{PHP.L.ExtfCodeInfo}</div>
          </div>
          <div class="span2">
            <label for="extf_field_type">{PHP.L.ExtfType}:</label>
            <select name="field_type" id="extf_field_type" class="span2">
              <optgroup label="Text">
                <option value="input">String</option>
                <option value="textarea">Textarea</option>
              </optgroup>
              <optgroup label="Number">
                <option value="inputint">Integer</option>
                <option value="double">Double</option>
                <option value="currency">Currency</option>
                <option value="range">Range</option>
              </optgroup>
              <optgroup label="Selection">
                <option value="select">Select</option>
                <option value="checkbox">Checkbox</option>
                <option value="checklistbox">Checklistbox</option>
                <option value="radio">Radio</option>
                <option value="country">Country</option>
              </optgroup>
              <optgroup label="Other">
                <option value="datetime">Datetime</option>
                <option value="file">File</option>
              </optgroup>
            </select>
            {PHP.L.adm_extrafield_required|cot_checkbox(0, 'field_required', $this, 'class="exfldrequired"')}
          </div>
        </div>
        <div class="row">
          <div class="span4">
            <label for="extf_field_default">{PHP.L.ExtfDefault}:</label>
            <input type="text" name="field_default" id="extf_field_default" class="span4">
          </div>
        </div>
      </div>
      <div class="span3">
        <div id="extf_type_text">
          <label>{PHP.L.ExtfParser}:</label>
          <select name="field_parse" class="span2">
            <!-- FOR {TYPE} IN {PHP.parse_type} -->
            <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
            <!-- ENDFOR -->
          </select>
        </div>
        <div id="extf_type_select">
          <label>{PHP.L.Options}:</label>
          <div class="input-append" style="margin:0;">
            <input type="text" name="newoption" placeholder="{PHP.L.NewOption}"><button class="btn" id="newoption"><i class="icon-plus"></i></button>
          </div>
          <ul id="options"></ul>
        </div>
        <div id="extf_type_range" class="row">
          <div class="span1">
            <label>{PHP.L.From}:</label>
            <input type="text" name="rangefrom" class="span1">
          </div>
          <div class="span1">
            <label>{PHP.L.To}:</label>
            <input type="text" name="rangeto" class="span1">
          </div>
        </div>
      </div>
    </div>
    <div class="form-actions">
      <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
      <label class="checkbox inline"><input type="checkbox" name="field_noalter" /> {PHP.L.adm_extrafield_noalter}</label>
    </div>
  </form>
<!-- END: TABLE -->

<!-- END: MAIN -->