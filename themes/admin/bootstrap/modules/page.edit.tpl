<!-- BEGIN: MAIN -->

<div class="container" id="adminmain">
  
  <ul class="breadcrumb">
    <li>
      <a href="{PHP|cot_url('admin')}" title="{PHP.L.Adminpanel}">{PHP.L.Adminpanel}</a>
      <span class="divider">/</span>
    </li>
    <li>
      <a href="{PHP|cot_url('admin', 'm=page')}" title="{PHP.L.Pages}">{PHP.L.Pages}</a>
      <span class="divider">/</span>
    </li>
    <li>
      <a href="{PHP.pag.page_cat|cot_url('page', 'c=$this')}" title="{PHP.sys.sublocation}">{PHP.sys.sublocation}</a>
      <span class="divider">/</span>
    </li>
    <li>
      <a href="{PHP.id|cot_url('page', 'id=$this')}" title="{PHP.pag.page_title}">{PHP.pag.page_title}</a>
      <span class="divider">/</span>
    </li>
    <li>
      <a href="{PHP.id|cot_url('page', 'm=edit&id=$this')}" title="{PHP.L.Edit}">{PHP.L.Edit}</a>
    </li>
  </ul>

  {FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

  <h2>{PAGEADD_PAGETITLE}</h2>
  
  <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
    <div class="row">
      <div class="span4">
        <div class="control-group">
          <label class="control-label">{PHP.L.Title}:</label>
          <div class="controls">
            <input type="text" name="rpagetitle" value="{PHP.pag.page_title}" maxlength="100" class="span4">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">{PHP.L.Description}:</label>
          <div class="controls">
            <input type="text" name="rpagedesc" value="{PHP.pag.page_desc}" maxlength="255" class="span4">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">{PHP.L.Keywords}</label>
          <div class="controls">
            <input type="text" name="rpagekeywords" value="{PHP.pag.page_keywords}" maxlength="255" class="span4">
          </div>
        </div>

        <!-- BEGIN: TAGS -->
        <div class="control-group">
          <label class="control-label">{PAGEEDIT_TOP_TAGS} ({PAGEEDIT_TOP_TAGS_HINT}):</label>
          <div class="controls">
            <input type="text" name="rtags" value="{PHP.rtags}" class="span4 autotags">
          </div>
        </div>
        <!-- END: TAGS -->
      </div>
      
      <div class="span3">
        <div class="control-group">
          <label class="control-label">{PHP.L.Category}:</label>
          <div class="controls">
            {PAGEEDIT_FORM_CAT}
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">{PHP.L.Alias}:</label>
          <div class="controls">
            <input type="text" name="rpagealias" value="{PHP.pag.page_alias}" maxlength="255" class="span3">
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">{PHP.L.Author}:</label>
          <div class="controls">
            <input type="text" name="rpageauthor" value="<!-- IF {PHP.pag.page_author} -->{PHP.pag.page_author}<!-- ELSE -->{PHP.usr.name}<!-- ENDIF -->" maxlength="50" class="span3">
          </div>
        </div>

        <div class="control-group">
          <label class="control-label">{PHP.L.Parser}:</label>
          <div class="controls">
            {PAGEEDIT_FORM_PARSER}
          </div>
        </div>
      </div>
      
      <div class="span5">
        <div class="row">
          <div class="span2">
            <div class="control-group">
              <label class="control-label">{PHP.L.FileDownload}:</label>
              <div class="controls">
                {PAGEEDIT_FORM_FILE}
              </div>
            </div>
          </div>
          <div class="span3">
            <div class="control-group">
              <label class="control-label">{PHP.L.Filesize}:</label>
              <div class="controls">
                <div class="input-append">
                  <input type="text" name="rpagesize" value="{PHP.pag.page_size}" maxlength="255" class="span2"><span class="add-on">{PHP.L.bytes}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">{PHP.L.FileURL}:</label>
          <div class="controls">
            <input type="text" name="rpageurl" value="{PHP.pag.page_url}" maxlength="255" class="span5">
            <!-- IF {PAGEADD_FORM_URL_PFS} -->{PAGEEDIT_FORM_URL_PFS}<!-- ENDIF -->
            <!-- IF {PAGEADD_FORM_URL_SFS} -->{PAGEEDIT_FORM_URL_SFS}<!-- ENDIF -->
          </div>
        </div>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">{PHP.L.Body}:</label>
      <div class="controls">
        <textarea name="rpagetext" rows="24" class="span12">{PHP.pag.page_text}</textarea>
        <!-- IF {PAGEADD_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
        <!-- IF {PAGEADD_FORM_SFS} -->{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">{PHP.L.Begin}:</label>
      <div class="controls">
        {PAGEEDIT_FORM_BEGIN}
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">{PHP.L.Expire}:</label>
      <div class="controls">
        {PAGEEDIT_FORM_EXPIRE}
      </div>
    </div>
    
    <div class="form-actions">
      <button type="submit" name="rpagestate" value="1" class="btn btn-primary"><i class="icon-ok icon-white"></i> {PHP.L.Submitforapproval}</button>
      <button type="submit" name="rpagestate" value="2" class="btn"><i class="icon-tint"></i> {PHP.L.Saveasdraft}</button>
      <!-- IF {PHP.usr_can_publish} -->
      <button type="submit" name="rpagestate" value="0" class="btn"><i class="icon-play"></i> {PHP.L.Publish}</button> 
      <!-- ENDIF -->
    </div>
  </form>
  <!-- IF !{PHP.usr_can_publish} OR 1 -->
  <div class="alert alert-info">{PHP.L.page_formhint}</div>
  <!-- ENDIF -->
</div>

<!-- END: MAIN -->