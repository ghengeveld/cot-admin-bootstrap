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
<h2>{PHP.L.ExtraFields}</h2>

<div class="row">
  <div class="span8">
    <!-- IF {PHP.totalitems} > 0 -->
    <div class="accordion" id="fields">
      <!-- BEGIN: EXTRAFIELDS_ROW -->	
      <div class="accordion-group">
        <div class="accordion-heading">
          <a class="accordion-toggle" data-toggle="collapse" data-parent="#fields" href="#extf_{ADMIN_EXTRAFIELDS_ROW_ID}">
            <!-- IF {PHP.row.field_description} -->{PHP.row.field_description}<!-- ELSE -->{ADMIN_EXTRAFIELDS_ROW_ID}<!-- ENDIF -->
          </a>
        </div>
        <div id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}" class="accordion-body collapse<!-- IF {ADMIN_EXTRAFIELDS_ROW_COUNTER_ROW} == 1 --> in<!-- ENDIF -->">
          <div class="accordion-inner">
            <form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post" style="margin:5px 0;">
              <div class="row">
                <div class="span4">
                  <div>
                    <label for="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_description">{PHP.L.ExtfTitle}:</label>
                    <input type="text" class="span4" name="field_description[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_description" value="{PHP.row.field_description}">
                    <div class="help-text below">{PHP.L.ExtfTitleInfo}</div>
                  </div>

                  <div class="row">
                    <div class="span2">
                      <label for="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_name">{PHP.L.ExtfCode}:</label>
                      <input type="text" class="span2" name="field_name[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_name" value="{PHP.row.field_name}">
                      <div class="help-text below">{PHP.L.ExtfCodeInfo}</div>
                    </div>
                    <div class="span2">
                      <label for="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_type">{PHP.L.ExtfType}:</label>
                      <select name="field_type[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_type" class="span2">
                        <optgroup label="Text">
                          <option value="input"<!-- IF {PHP.row.field_type} == 'input' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeString}</option>
                          <option value="textarea"<!-- IF {PHP.row.field_type} == 'textarea' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeTextarea}</option>
                        </optgroup>
                        <optgroup label="Number">
                          <option value="inputint"<!-- IF {PHP.row.field_type} == 'inputint' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeInteger}</option>
                          <option value="double"<!-- IF {PHP.row.field_type} == 'double' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeDouble}</option>
                          <option value="currency"<!-- IF {PHP.row.field_type} == 'currency' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCurrency}</option>
                          <option value="range"<!-- IF {PHP.row.field_type} == 'range' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeRange}</option>
                        </optgroup>
                        <optgroup label="Selection">
                          <option value="select"<!-- IF {PHP.row.field_type} == 'select' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeSelect}</option>
                          <option value="checkbox"<!-- IF {PHP.row.field_type} == 'checkbox' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCheckbox}</option>
                          <option value="checklistbox"<!-- IF {PHP.row.field_type} == 'checklistbox' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeChecklistbox}</option>
                          <option value="radio"<!-- IF {PHP.row.field_type} == 'radio' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeRadio}</option>
                          <option value="country"<!-- IF {PHP.row.field_type} == 'country' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCountry}</option>
                        </optgroup>
                        <optgroup label="Other">
                          <option value="datetime"<!-- IF {PHP.row.field_type} == 'datetime' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeDatetime}</option>
                          <option value="file"<!-- IF {PHP.row.field_type} == 'file' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeFile}</option>
                        </optgroup>
                      </select>
                      <label class="checkbox">
                        <input type="checkbox" name="field_required[{ADMIN_EXTRAFIELDS_ROW_ID}]"<!-- IF {PHP.row.field_required} --> checked="checked"<!-- ENDIF -->>
                        {PHP.L.adm_extrafield_required}
                      </label>
                    </div>
                  </div>

                  <div>
                    <label for="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_default">{PHP.L.ExtfDefault}:</label>
                    <input type="text" name="field_default[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_default" class="span4" value="{PHP.row.field_default}">
                  </div>
                </div>
                <div class="span3">
                  <!-- IF {PHP.row.field_type} != 'textarea' AND {PHP.row.field_type} != 'select' AND {PHP.row.field_type} != 'checkbox' AND {PHP.row.field_type} != 'radio' AND {PHP.row.field_type} != 'country' -->
                  <label>{PHP.L.ExtfParameters}:</label>
                  <textarea name="field_params[{ADMIN_EXTRAFIELDS_ROW_ID}]" rows="2" class="span3">{PHP.row.field_params}</textarea>
                  <!-- ENDIF -->

                  <!-- IF {PHP.row.field_type} == 'input' OR {PHP.row.field_type} == 'textarea' -->
                  <label>{PHP.L.ExtfParser}:</label>
                  <select name="field_parse" class="span2">
                    <!-- FOR {TYPE} IN {PHP.parse_type} -->
                    <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
                    <!-- ENDFOR -->
                  </select>
                  <!-- ENDIF -->

                  <!-- IF {PHP.row.field_type} == 'select' OR {PHP.row.field_type} == 'checklistbox' OR {PHP.row.field_type} == 'radio' -->
                  <label>{PHP.L.ExtfOptions}:</label>
                  <textarea name="field_variants[{ADMIN_EXTRAFIELDS_ROW_ID}]" rows="2" class="span3">{PHP.row.field_variants}</textarea>
                  <!-- ENDIF -->
                </div>
              </div>
              <label>{PHP.L.ExtfHTML}:</label>
              <textarea name="field_html[{ADMIN_EXTRAFIELDS_ROW_ID}]" rows="2" class="span7">{PHP.row.field_html}</textarea>
              <div class="help-text below">
                <!-- IF {PHP.row.field_type} == 'input' -->{PHP.L.ExtfHTMLInfo.input}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'textarea' -->{PHP.L.ExtfHTMLInfo.textarea}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'inputint' -->{PHP.L.ExtfHTMLInfo.inputint}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'double' -->{PHP.L.ExtfHTMLInfo.double}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'currency' -->{PHP.L.ExtfHTMLInfo.currency}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'range' -->{PHP.L.ExtfHTMLInfo.range}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'select' -->{PHP.L.ExtfHTMLInfo.select}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'checkbox' -->{PHP.L.ExtfHTMLInfo.checkbox}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'checklistbox' -->{PHP.L.ExtfHTMLInfo.checklistbox}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'radio' -->{PHP.L.ExtfHTMLInfo.radio}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'country' -->{PHP.L.ExtfHTMLInfo.country}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'datetime' -->{PHP.L.ExtfHTMLInfo.datetime}<!-- ENDIF -->
                <!-- IF {PHP.row.field_type} == 'file' -->{PHP.L.ExtfHTMLInfo.file}<!-- ENDIF -->
              </div>
              <hr>
              <a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="btn btn-mini btn-danger" style="float:right;"><i class="icon-remove icon-white"></i> {PHP.L.Delete}</a>
              <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
              <button type="reset" class="btn">{PHP.L.Reset}</button>
            </form>
          </div>
        </div>
      </div>
      <!-- END: EXTRAFIELDS_ROW -->
    </div>

    <!-- IF {PHP.pagenav.total} > 1 -->
    <div class="pagination">
      {ADMIN_EXTRAFIELDS_PAGNAV}
    </div>
    <p>{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_COUNTER_ROW}</p>
    <!-- ENDIF -->
    
    <!-- ELSE -->
    <p>{PHP.L.None}</p>
    <!-- ENDIF -->
  </div>
  <div class="span4">
    <h3>{PHP.L.adm_extrafield_new}</h3>
    <form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
      <input type="hidden" name="field_params" id="extf_field_params" value="">
      <input type="hidden" name="field_variants" id="extf_field_variants" value="">

      <div>
        <label>{PHP.L.ExtfTitle}:</label>
        <input type="text" class="span4" name="field_description" id="extf_field_description" value="">
        <div class="help-text below">{PHP.L.ExtfTitleInfo}</div>
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
              <option value="input">{PHP.L.ExtfTypeString}</option>
              <option value="textarea">{PHP.L.ExtfTypeTextarea}</option>
            </optgroup>
            <optgroup label="Number">
              <option value="inputint">{PHP.L.ExtfTypeInteger}</option>
              <option value="double">{PHP.L.ExtfTypeDouble}</option>
              <option value="currency">{PHP.L.ExtfTypeCurrency}</option>
              <option value="range">{PHP.L.ExtfTypeRange}</option>
            </optgroup>
            <optgroup label="Selection">
              <option value="select">{PHP.L.ExtfTypeSelect}</option>
              <option value="checkbox">{PHP.L.ExtfTypeCheckbox}</option>
              <option value="checklistbox">{PHP.L.ExtfTypeChecklistbox}</option>
              <option value="radio">{PHP.L.ExtfTypeRadio}</option>
              <option value="country">{PHP.L.ExtfTypeCountry}</option>
            </optgroup>
            <optgroup label="Other">
              <option value="datetime">{PHP.L.ExtfTypeDatetime}</option>
              <option value="file">{PHP.L.ExtfTypeFile}</option>
            </optgroup>
          </select>
          {PHP.L.adm_extrafield_required|cot_checkbox(0, 'field_required', $this)}
        </div>
      </div>
      
      <div>
        <label for="extf_field_default">{PHP.L.ExtfDefault}:</label>
        <input type="text" name="field_default" id="extf_field_default" class="span4">
      </div>
      
      <div style="padding:5px 0 10px 0;">
        <label class="checkbox"><input type="checkbox" name="field_noalter" /> {PHP.L.adm_extrafield_noalter}</label>
      </div>
      
      <h4 id="customize" style="margin-bottom:10px;" class="separator">{PHP.L.ExtfCustomization}</h4>
      
      <div id="extf_type_input" class="row">
        <div class="span2">
          <label>{PHP.L.ExtfParser}:</label>
          <select name="field_parse" class="span2">
            <!-- FOR {TYPE} IN {PHP.parse_type} -->
            <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
            <!-- ENDFOR -->
          </select>
        </div>
        <div class="span2">
          <label>{PHP.L.ExtfRegexMatch}:</label>
          <input type="text" name="regex" value="" class="span2">
          <div class="help-text below">{PHP.L.ExtfRegexMatchInfo}</div>
        </div>
      </div>
      
      <div id="extf_type_textarea">
        <label>{PHP.L.ExtfParser}:</label>
        <select name="field_parse" class="span2">
          <!-- FOR {TYPE} IN {PHP.parse_type} -->
          <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
          <!-- ENDFOR -->
        </select>
      </div>
      
      <div id="extf_type_checklistbox" style="float:right;">
        <label>{PHP.L.ExtfSeparator}:</label>
        <input type="text" name="separator" value="" class="span1">
      </div>
      
      <div id="extf_type_select">
        <label>{PHP.L.ExtfOptions}:</label>
        <div class="input-append" style="margin:0;">
          <input type="text" name="newoption" placeholder="{PHP.L.ExtfNewOption}"><button class="btn" id="newoption"><i class="icon-plus"></i></button>
        </div>
        <ul id="options"></ul>
      </div>
      
      <div id="extf_type_rangeint">
        <div class="row">
          <div class="span1">
            <label>{PHP.L.ExtfMin}:</label>
            <input type="text" name="intmin" class="span1">
          </div>
          <div class="span1">
            <label>{PHP.L.ExtfMax}:</label>
            <input type="text" name="intmax" class="span1">
          </div>
          <div class="span2">
            <div class="help-text" style="padding-top:3em;">{PHP.L.ExtfRangeIntInfo}</div>
          </div>
        </div>
      </div>
      <div id="extf_type_rangefloat">
        <div class="row">
          <div class="span1">
            <label>{PHP.L.ExtfMin}:</label>
            <input type="text" name="floatmin" class="span1">
          </div>
          <div class="span1">
            <label>{PHP.L.ExtfMax}:</label>
            <input type="text" name="floatmax" class="span1">
          </div>
          <div class="span2">
            <div class="help-text" style="padding-top:3em;">{PHP.L.ExtfRangeFloatInfo}</div>
          </div>
        </div>
      </div>
      
      <div id="extf_type_datetime">
        <div class="row">
          <div class="span1">
            <label>{PHP.L.ExtfMinYear}:</label>
            <input type="text" name="datemin" class="span1">
          </div>
          <div class="span1">
            <label>{PHP.L.ExtfMaxYear}:</label>
            <input type="text" name="datemax" class="span1">
          </div>
          <div class="span1">
            <label>{PHP.L.ExtfFormat}:</label>
            <input type="text" name="dateformat" class="span2" value="{PHP.Ldt.datetime_medium}">
          </div>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
    </form>
  </div>
</div>
<!-- END: TABLE -->

<!-- END: MAIN -->