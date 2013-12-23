<html>
<body>
<p>尊敬的矿工,</p>
<p>邀请您加入爱挖矿:
<p>http://{$smarty.server.SERVER_NAME}{$smarty.server.PHP_SELF}?page=register&token={nocache}{$DATA.token}{/nocache}</p>
{if $DATA.message}<p>{nocache}{$DATA.message}{/nocache}</p>{/if}
<p></p>

<p>爱挖矿</p>
</body>
</html>
