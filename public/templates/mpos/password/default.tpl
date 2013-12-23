<article class="module width_half">
  <form action="" method="POST">
    <input type="hidden" name="page" value="password">
    <input type="hidden" name="action" value="reset">
    <header><h3>密码重置</h3></header>
    <div class="module_content">
      <p>输入您的用户名或E-Mail</p>
      <fieldset>
        <label>用户名 或 E-Mail</label>
        <input type="text" name="username" value="{$smarty.post.username|escape|default:""}" size="22" maxlength="20" required>
      </fieldset>
      <div class="clear"></div>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="重置" class="alt_btn">
      </div>
    </footer>
  </form>
</article>
