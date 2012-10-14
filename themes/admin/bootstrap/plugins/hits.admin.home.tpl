<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
<table class="table table-condensed">
  <thead>
    <tr>
      <th colspan="2">{PHP.L.hits_hits}</th>
    </tr>
  </thead>
  <tbody>
    <!-- BEGIN: ADMIN_HOME_ROW -->
    <tr>
      <td style="width:5em;">{ADMIN_HOME_DAY}</td>
      <td>
        <div class="progress" style="margin:0;">
          <!-- IF {ADMIN_HOME_PERCENTBAR} > 50 -->
          <div class="bar" style="width:{ADMIN_HOME_PERCENTBAR}%;"><span class="amount">{ADMIN_HOME_HITS|cot_declension($this, 'Hits')}</span></div>
          <!-- ELSE -->
          <div class="bar" style="width:{ADMIN_HOME_PERCENTBAR}%;"></div><span class="amount">{ADMIN_HOME_HITS|cot_declension($this, 'Hits')}</span>
          <!-- ENDIF -->
        </div>
      </td>
    </tr>
    <!-- END: ADMIN_HOME_ROW -->
  </tbody>
  <tfoot>
    <tr>
      <td colspan="2">
        <a href="{ADMIN_HOME_MORE_HITS_URL}">{PHP.L.ReadMore}</a>
      </td>
    </tr>
  </tfoot>
</table>
<!-- END: STAT -->

<!-- BEGIN: ACTIVITY -->
<table class="table table-condensed">
  <thead>
    <tr>
      <th colspan="2">{PHP.L.hits_activity}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>{PHP.L.home_newusers}:</td>
      <td><a href="{ADMIN_HOME_NEWUSERS_URL}">{ADMIN_HOME_NEWUSERS}</a></td>
    </tr>
    <tr>
      <td>{PHP.L.home_newpages}:</td>
      <td><a href="{ADMIN_HOME_NEWPAGES_URL}">{ADMIN_HOME_NEWPAGES}</a></td>
    </tr>
    <tr>
      <td>{PHP.L.home_newtopics}:</td>
      <td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{ADMIN_HOME_NEWTOPICS}</a></td>
    </tr>
    <tr>
      <td>{PHP.L.home_newposts}:</td>
      <td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{ADMIN_HOME_NEWPOSTS}</a></td>
    </tr>
    <tr>
      <td>{PHP.L.home_newpms}:</td>
      <td><a href="{PHP|cot_url('pm')}">{ADMIN_HOME_NEWPMS}</a></td>
    </tr>
  </tbody>
</table>
<!-- END: ACTIVITY -->

<!-- END: MAIN -->