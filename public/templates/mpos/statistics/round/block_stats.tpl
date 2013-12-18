<article class="module width_full">
  <header><h3>块统计</h3></header>
  <table class="tablesorter">
    <tbody>
      <tr>
        <td align="left">
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&height={$BLOCKDETAILS.height}&prev=1"><i class="icon-left-open"></i></a>
        </td>
        <td colspan="7" align="right">
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&height={$BLOCKDETAILS.height}&next=1"><i class="icon-right-open"></i></a>
        </td>
      </tr>
      <tr class="odd">
        <td>ID</td>
        <td>{$BLOCKDETAILS.id|number_format:"0"|default:"0"}</td>
        <td>总块数</td>
	{if ! $GLOBAL.website.blockexplorer.disabled}
      	<td><a href="{$GLOBAL.website.blockexplorer.url}{$BLOCKDETAILS.blockhash}" target="_new">{$BLOCKDETAILS.height|number_format:"0"|default:"0"}</a></td>
	{else}
      	<td>{$BLOCKDETAILS.height|number_format:"0"|default:"0"}</td>
	{/if}
        <td>含多少LTC</td>
        <td>{$BLOCKDETAILS.amount|number_format|default:"0"}</td>
        <td>确认</td>
        <td>{if $BLOCKDETAILS.confirmations >= $GLOBAL.confirmations}
          <font color="green">已确认</font>
        {else if $BLOCKDETAILS.confirmations == -1}
          <font color="red">孤立的</font>
        {else if $BLOCKDETAILS.confirmations == 0}0
        {else}{($GLOBAL.confirmations - $BLOCKDETAILS.confirmations)|default:"0"} left{/if}</td>
      </tr>
      <tr class="even">
        <td>难度</td>
        <td>{$BLOCKDETAILS.difficulty|default:"0"}</td>
        <td>时间</td>
        <td>{$BLOCKDETAILS.time|default:"0"}</td>
        <td>Share数</td>
        <td>{$BLOCKDETAILS.shares|number_format:"0"|default:"0"}</td>
        <td>发现者</td>
        <td>{$BLOCKDETAILS.finder|default:"0"}</td>
      </tr>
    </tbody>
  </table>
  <footer>
    <div class="submit_link">
      <form action="{$smarty.server.PHP_SELF}" method="POST" id='search'>
        <input type="hidden" name="page" value="{$smarty.request.page|escape}">
        <input type="hidden" name="action" value="{$smarty.request.action|escape}">
        <input type="text" class="pin" name="search" value="{$smarty.request.height|default:"%"|escape}">
        <input type="submit" value="Search" class="alt_btn">
      </form>
    </div>
  </footer>
</article>
