<html>
<body>
<p>尊敬的矿工,</p><br />
<p>邀请你加入爱挖矿:
<p>http://{$smarty.server.SERVER_NAME}{$smarty.server.PHP_SELF}?page=register&token={nocache}{$DATA.token}{/nocache}</p>
{if $DATA.message}<p>{nocache}{$DATA.message}{/nocache}</p>{/if}
<p></p>
<p>祝好,</p>
<p>爱挖矿</p>
</body>
</html>
