<html>
<body>
<p>您好， {nocache}{$DATA.username}{/nocache},</p><br />
<p>点击下面链接完成密码重置:</p>
<p>http://{$smarty.server.SERVER_NAME}{$smarty.server.PHP_SELF}?page=password&action=change&token={nocache}{$DATA.token}{/nocache}</p>
<p>修改完密码后，请使用新密码重新登录。</p>
<p>爱挖矿</p>
</body>
</html>
