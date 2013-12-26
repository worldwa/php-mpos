<form action="" method="POST">
<input type="hidden" name="page" value="password">
<input type="hidden" name="action" value="reset">
  <p>请输入你的用户名已重置密码，然后检查注册时用的邮箱</p>
  <p><input type="text" value="{$smarty.post.username|escape|default:""}" name="username" required><input class="submit small" type="submit" value="重置"></p>
</form>
