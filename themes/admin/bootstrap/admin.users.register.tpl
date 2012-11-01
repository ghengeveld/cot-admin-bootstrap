<div class="modal hide fade" id="newuser" role="dialog" aria-hidden="true">
  <div class="modal-header">
    <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>{PHP.L.CreateNewUserAccount}</h3>
  </div>
  <form action="{PHP|cot_url('users', 'm=register&a=add')}" method="POST" class="form-horizontal">
    <div class="modal-body">
      <div class="control-group">
        <label class="control-label" for="username">{PHP.L.Username}:</label>
        <div class="controls">
          <input type="text" name="rusername" id="username">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="email">{PHP.L.Email}:</label>
        <div class="controls">
          <input type="email" name="ruseremail" id="email">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="password">{PHP.L.PasswordTwice}:</label>
        <div class="controls">
          <input type="password" name="rpassword1" id="password" class="input-small">&nbsp;&nbsp;
          <input type="password" name="rpassword2" class="input-small">
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button class="btn btn-primary">{PHP.L.Register}</button>
    </div>
  </form>
</div>