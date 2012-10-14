<!-- BEGIN: MAIN -->

<h2>{PHP.L.SystemInfo}</h2>

<div class="row">
  <div class="span6">
    <h3><a name="webserver"></a>{PHP.L.Webserver}</h3>
    <table class="table table-striped">
      <tr>
        <th class="span3">{PHP.L.adm_phpver}</th>
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
          <!-- ELSE -->{PHP.L.None}<!-- ENDIF -->
        </td>
      </tr>
    </table>
  </div>
  <div class="span6">
    <h3><a name="clock"></a>{PHP.L.ClockConfig}</h3>
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

<!-- IF {PHP|function_exists('gd_info')} -->
<h3><a name="gdlibrary"></a>{PHP.L.GraphicsLibrary}</h3>
<table class="table table-striped">
  <!-- FOR {KEY},{VALUE} IN {PHP|gd_info} -->
  <tr>
    <th class="span3">{KEY}</th>
    <td>
    <!-- IF {VALUE|mb_strlen($this)} > 1 -->
      {VALUE}
      <!-- ELSE -->
      <!-- IF {VALUE} == 1 -->{PHP.cot_yesno.1}<!-- ELSE -->{PHP.cot_yesno.0}<!-- ENDIF -->
      <!-- ENDIF -->
    </td>
  </tr>
  <!-- ENDFOR -->
</table>
<!-- ENDIF -->

<!-- IF {PHP.usr.isadmin} -->
<h3><a name="servervars"></a>{PHP.L.ServerVars}</h3>
<table class="table table-striped">
  <!-- FOR {KEY},{VALUE} IN {PHP._SERVER} -->
  <tr>
    <th class="span3">{KEY}</th>
    <td>{VALUE}</td>
  </tr>
  <!-- ENDFOR -->
</table>
<!-- ENDIF -->

<!-- END: MAIN -->