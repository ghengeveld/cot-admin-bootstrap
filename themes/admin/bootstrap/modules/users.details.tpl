<!-- BEGIN: MAIN -->

<div class="container" id="adminmain">
  
  <div class="btn-group" style="float:right;">
    <!-- BEGIN: USERS_DETAILS_ADMIN -->
    <a class="btn" href="{USERS_DETAILS_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
      <i class="icon-pencil"></i> {PHP.L.Edit}
    </a>
    <!-- END: USERS_DETAILS_ADMIN -->
    <!-- IF {PHP|cot_module_active('pm')} -->
    <a class="btn" href="{USERS_DETAILS_ID|cot_url('pm', 'm=send&to=$this')}" title="{PHP.L.pm_sendnew}">
      <i class="icon-envelope"></i> {PHP.L.users_sendpm}
    </a>
    <!-- ENDIF -->
  </div>
  
  <a href="{PHP|cot_url('users')}">{PHP.L.Users}</a> / {USERS_DETAILS_MAINGRP} / {USERS_DETAILS_NAME}

  <div class="row" style="clear: both; padding-top: 20px;">
    <table class="span8 table table-striped">
      <tr>
        <th>{PHP.L.Groupsmembership}:</th>
        <td>{USERS_DETAILS_GROUPS}</td>
      </tr>
      <tr>
        <th>{PHP.L.Country}:</th>
        <td>{USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</td>
      </tr>
      <tr>
        <th>{PHP.L.Timezone}:</th>
        <td>{USERS_DETAILS_TIMEZONE}</td>
      </tr>
      <tr>
        <th>{PHP.L.Birthdate}:</th>
        <td>{USERS_DETAILS_BIRTHDATE}</td>
      </tr>
      <tr>
        <th>{PHP.L.Age}:</th>
        <td>{USERS_DETAILS_AGE}</td>
      </tr>
      <tr>
        <th>{PHP.L.Gender}:</th>
        <td>{USERS_DETAILS_GENDER}</td>
      </tr>
      <tr>
        <th>{PHP.L.Signature}:</th>
        <td>{USERS_DETAILS_TEXT}</td>
      </tr>
      <tr>
        <th>{PHP.L.Registered}:</th>
        <td>{USERS_DETAILS_REGDATE}</td>
      </tr>
      <!-- IF {USERS_DETAILS_AVATAR} -->
      <tr>
        <th>{PHP.L.Avatar}:</th>
        <td>{USERS_DETAILS_AVATAR}</td>
      </tr>
      <!-- ENDIF -->
      <!-- IF {USERS_DETAILS_PHOTO} -->
      <tr>
        <th>{PHP.L.Photo}:</th>
        <td>{USERS_DETAILS_PHOTO}</td>
      </tr>
      <!-- ENDIF -->
    </table>
  </div>
</div>

<!-- END: MAIN -->