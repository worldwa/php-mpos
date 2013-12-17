<html>
<body>
<p>您好， {nocache}{$DATA.username}{/nocache},</p><br />
<p>点击下面链接完成注册:</p>
<p>http://{$smarty.server.SERVER_NAME}{$smarty.server.PHP_SELF}?page=account&action=confirm&token={nocache}{$DATA.token}{/nocache}</p>
<p></p>
<p>爱挖矿</p>
</body>
</html>
