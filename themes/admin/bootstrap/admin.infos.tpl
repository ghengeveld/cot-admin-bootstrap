<!-- BEGIN: MAIN -->

<h2>{PHP.L.SystemInfo}</h2>

<div class="row">
  <div class="span6">
    <h3>{PHP.L.Webserver}</h3>
    <table class="table table-striped">
      <tr>
        <th style="width:180px;">{PHP.L.adm_phpver}</th>
        <td>{ADMIN_INFOS_PHPVER}</td>
      </tr>
      <tr>
        <th>{PHP.L.adm_zendver}</th>
        <td>{ADMIN_INFOS_ZENDVER}</td>
      </tr>
      <tr>
        <th>{PHP.L.adm_interface}</th>
        <td>{ADMIN_INFOS_INTERFACE}</td>
      </tr>
      <tr>
        <th>{PHP.L.adm_os}</th>
        <td>{ADMIN_INFOS_OS}</td>
      </tr>
      <tr>
        <th>{PHP.L.adm_cachedrivers}</th>
        <td>
          <!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
          {ADMIN_INFOS_CACHEDRIVERS}
          <!-- ELSE -->
          {PHP.L.None}
          <!-- ENDIF -->
        </td>
      </tr>
    </table>
  </div>
  <div class="span6">
    <h3>{PHP.L.ClockConfig}</h3>
    <table class="table table-striped">
      <tr>
        <th>{PHP.L.RawTime}</th>
        <td>{PHP.sys.now|gmdate('c', $this)}</td>
      </tr>
      <tr>
        <th>{PHP.L.GMTTime}</th>
        <td>{ADMIN_INFOS_GMTTIME}</td>
      </tr>
      <tr>
        <th>{PHP.L.LocalTime}</th>
        <td>{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
      </tr>
    </table>
    <div class="alert alert-info">{PHP.L.TimeHelp}</div>
  </div>
</div>

<!-- IF {PHP.usr.isadmin} -->
<h3>{PHP.L.ServerVars}</h3>
<table class="table table-striped">
<!-- FOR {K},{V} IN {PHP._SERVER} -->
<tr>
  <th style="width:180px;">{K}</th>
  <td>{V}</td>
</tr>
<!-- ENDFOR -->
</table>
<!-- ENDIF -->

<!-- END: MAIN -->