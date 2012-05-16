<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/admin/bootstrap/warnings.tpl"}

<div class="row">
  <div class="span4">
    <h3>{PHP.L.Core}</h3>
    <ul class="nav nav-tabs nav-stacked">
      <li>
        <a href="{ADMIN_OTHER_URL_CACHE}">
          <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
          {PHP.L.adm_internalcache}
        </a>
      </li>
      <li>
        <a href="{ADMIN_OTHER_URL_DISKCACHE}">
          <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
          {PHP.L.adm_diskcache}
        </a>
      </li>
      <li>
        <a href="{ADMIN_OTHER_URL_EXFLDS}">
          <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
          {PHP.L.adm_extrafields}
        </a>
      </li>
      <li>
        <a href="{ADMIN_OTHER_URL_LOG}">
          <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
          {PHP.L.adm_log}
        </a>
      </li>
      <li>
        <a href="{ADMIN_OTHER_URL_INFOS}">
          <img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png">
          {PHP.L.adm_infos}
        </a>
      </li>
    </ul>
  </div>

  <!-- BEGIN: SECTION -->
  <div class="span4">
    <h3>{ADMIN_OTHER_SECTION}</h3>
    <ul class="nav nav-tabs nav-stacked">
      <!-- BEGIN: ROW -->
      <li>
        <a href="{ADMIN_OTHER_EXT_URL}">
          <!-- IF {ADMIN_OTHER_EXT_ICO} --> 
          <img src="{ADMIN_OTHER_EXT_ICO}">
          <!-- ELSE -->
          <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png">
          <!-- ENDIF -->
          {ADMIN_OTHER_EXT_NAME}
        </a>
      </li>
      <!-- END: ROW -->
      <!-- BEGIN: EMPTY -->
      <li>
        {PHP.L.adm_listisempty}
      </li>
      <!-- END: EMPTY -->
    </ul>
  </div>
  <!-- END: SECTION -->
</div>

<!-- END: MAIN -->