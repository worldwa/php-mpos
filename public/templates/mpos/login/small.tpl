{if $smarty.session.AUTHENTICATED|default:"0" == 0}
<div class="login_small">
  <form action="{$smarty.server.PHP_SELF}" method="post" id="loginForm">
    <input type="hidden" name="page" value="login" />
    <input type="hidden" name="to" value="{$smarty.server.PHP_SELF}?page=dashboard" />
    <fieldset2 class="small">
      <label>用户名</label>
      <input type="text" name="username" size="22" maxlength="100" required />
      <fieldset2 class="small">
        <label>密码</label>
        <input type="password" name="password" size="22" maxlength="100" required />
      </fieldset2>
    </fieldset2>
    <input type="submit" value="登录" class="alt_btn" />
  </form>
</div>
{/if}
