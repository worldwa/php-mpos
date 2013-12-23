<article class="module width_half">
  <form action="{$smarty.server.PHP_SELF}?page=login" method="post" id="loginForm">
    <input type="hidden" name="to" value="{($smarty.request.to|default:"{$smarty.server.PHP_SELF}?page=dashboard")|escape}" />
    <header><h3>登录</h3></header>
    <div class="module_content">
        <fieldset>
          <label>用户名/E-Mail</label>
          <input type="text" name="username" size="22" maxlength="100" value="{$smarty.request.username|default:""|escape}" placeholder="用户名或Email" required />
        </fieldset>
        <fieldset>
          <label>密码</label>
          <input type="password" name="password" size="22" maxlength="100" placeholder="密码" required />
        </fieldset>
      <div class="clear"></div>
    </div>
    <footer>
      <div class="submit_link">
        <a href="{$smarty.server.PHP_SELF}?page=password"><font size="1">忘记密码?</font></a>
        <input type="submit" value="登录" class="alt_btn" />
      </div>
    </footer>
  </form>
</article>
