<article class="module width_half">
  <form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="token" value="{$smarty.request.token|escape}">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="do" value="resetPassword">
    <header><h3>密码重置</h3></header>
    <div class="module_content">
      <fieldset>
        <label>新密码</label>
        <input type="password" name="newPassword" required>
      </fieldset>
      <fieldset>
        <label>重新输入新密码</label>
        <input type="password" name="newPassword2" required>
      </fieldset>
      <div class="clear"></div>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="修改密码" class="alt_btn">
      </div>
    </footer>
  </form>
</article>
