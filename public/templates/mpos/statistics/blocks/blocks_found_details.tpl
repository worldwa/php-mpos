<article class="module width_full">
  <header><h3>最近爆的{$BLOCKLIMIT}块</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
        <th align="center">块</th>
        <th align="center">确认</th>
        <th>爆块者</th>
        <th align="center">日期</th>
        <th align="right">难度</th>
        <th align="right">金额</th>
        <th align="right">预期share数</th>
{if $GLOBAL.config.payout_system == 'pplns'}<th align="right">PPLNS Shares</th>{/if}
        <th align="right">实际share数</th>
        <th align="right" style="padding-right: 25px;">比例</th>
      </tr>
    </thead>
    <tbody>
{assign var=count value=0}
{assign var=totalexpectedshares value=0}
{assign var=totalshares value=0}
{assign var=pplnsshares value=0}
{section block $BLOCKSFOUND}
      {assign var="totalshares" value=$totalshares+$BLOCKSFOUND[block].shares}
      {assign var="count" value=$count+1}
      {if $GLOBAL.config.payout_system == 'pplns'}{assign var="pplnsshares" value=$pplnsshares+$BLOCKSFOUND[block].pplns_shares}{/if}
      <tr class="{cycle values="odd,even"}">
{if ! $GLOBAL.website.blockexplorer.disabled}
        <td align="center"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round&height={$BLOCKSFOUND[block].height}">{$BLOCKSFOUND[block].height}</a></td>
{else}
        <td align="center">{$BLOCKSFOUND[block].height}</td>
{/if}
        <td align="center">
{if $BLOCKSFOUND[block].confirmations >= $GLOBAL.confirmations}
          <span class="confirmed">已确认</span>
{else if $BLOCKSFOUND[block].confirmations == -1}
          <span class="orphan">孤立</span>
{else}
          <span class="unconfirmed">$BLOCKSFOUND[block].confirmations确认 </span>
{/if}
        </td>
        {*<td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$BLOCKSFOUND[block].finder|default:"unknown"|escape}{/if}</td>*}
        <td>{$BLOCKSFOUND[block].finder|default:"unknown"|escape}</td>
        <td align="center">{$BLOCKSFOUND[block].time|date_format:"y%/%m/%d %H:%M:%S"}</td>
        <td align="right">{$BLOCKSFOUND[block].difficulty|number_format:"2"}</td>
        <td align="right">{$BLOCKSFOUND[block].amount|number_format:"2"}</td>
        <td align="right">
{assign var="totalexpectedshares" value=$totalexpectedshares+$BLOCKSFOUND[block].estshares}
          {$BLOCKSFOUND[block].estshares|number_format}
        </td>
{if $GLOBAL.config.payout_system == 'pplns'}<td align="right">{$BLOCKSFOUND[block].pplns_shares|number_format}</td>{/if}
        <td align="right">{$BLOCKSFOUND[block].shares|number_format}</td>
        <td align="right" style="padding-right: 25px;">
{math assign="percentage" equation="shares / estshares * 100" shares=$BLOCKSFOUND[block].shares|default:"0" estshares=$BLOCKSFOUND[block].estshares}
          <font color="{if ($percentage <= 100)}green{else}red{/if}">{$percentage|number_format:"2"}</font>
        </td>
      </tr>
{/section}
    <tr>
      <td colspan="6" align="right"><b>Totals</b></td>
      <td align="right">{$totalexpectedshares|number_format}</td>
      {if $GLOBAL.config.payout_system == 'pplns'}<td align="right">{$pplnsshares|number_format}</td>{/if}
      <td align="right">{$totalshares|number_format}</td>
      <td align="right" style="padding-right: 25px;">{if $count > 0}<font color="{if (($totalshares / $totalexpectedshares * 100) <= 100)}green{else}red{/if}">{($totalshares / $totalexpectedshares * 100)|number_format:"2"}</font>{else}0{/if}</td>
    </tr>
    </tbody>
  </table>
  <footer>
    {*{if $GLOBAL.config.payout_system != 'pps'}<ul><li>Note: Round Earnings are not credited until <font color="orange">{$GLOBAL.confirmations}</font> confirms.</li></ul>{/if}*}
  </footer>
</article>
