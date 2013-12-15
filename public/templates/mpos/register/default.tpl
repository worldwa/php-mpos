<article class="module width_quarter">
  <header><h3>注册</h3></header>
  <div class="module_content">
  <form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
{if $smarty.request.token|default:""}
 §  <input type="hidden" name="token" value="{$smarty.request.token|escape}" />
{/if}
    <input type="hidden" name="action" value="register">
    <fieldset>
      <label>用户名</label>
      <input type="text" class="text tiny" name="username" value="{$smarty.post.username|escape|default:""}" size="15" maxlength="20" required>
    </fieldset>
    <fieldset>
      <label>密码</label>
      <input type="password" class="text tiny" name="password1" value="" size="15" maxlength="20" required>
      <label>再次输入密码</label>
      <input type="password" class="text tiny" name="password2" value="" size="15" maxlength="20" required>
    </fieldset>
    <fieldset>
      <label>Email</label>
      <input type="text" name="email1" class="text small" value="{$smarty.post.email1|escape|default:""}" size="15" required>
      <label>再次输入Email</label>
      <input type="text" class="text small" name="email2" value="{$smarty.post.email2|escape|default:""}" size="15" required>
    </fieldset>
    <fieldset>
      <label>PIN</label>
      <input type="password" class="text pin" name="pin" value="" size="4" maxlength="4"><font size="1"> (4位数字. <b>记住这4位PIN，你修改账户信息时需要用到它。</b>)</font>
    </fieldset>
    {nocache}{$RECAPTCHA|default:""}{/nocache}
    <footer>
      <div class="submit_link">
        <input type="submit" value="Register" class="alt_btn">
      </div>
    </footer>
  </form>
  </div>
</article>
