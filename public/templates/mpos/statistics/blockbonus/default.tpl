<article class="module width_full">
  <header><h3>最近爆块奖励</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
    <tr>
      <th align="center">块ID</th>
      <th align="center">用户名</th>
      <th align="center">奖励</th>
      <th align="center">日期</th>
    </tr>
    </thead>
    <tbody>
    {assign var=count value=0}
    {section bb $BLOCKBONUS}
      {assign var="count" value=$count+1}
      <tr class="{cycle values="odd,even"}">
        <td align="center">{$BLOCKBONUS[bb].height}</td>
        <td align="center">{$BLOCKBONUS[bb].username}</td>
        <td align="center">{$BLOCKBONUS[bb].amount|number_format:"2"} LTC</td>
        <td align="center">{date('Y-m-d H:i:s', strtotime($BLOCKBONUS[bb].timestamp)+8*60*60)}</td>
      </tr>
    {/section}
    </tbody>
  </table>
  <footer>
    {*{if $GLOBAL.config.payout_system != 'pps'}<ul><li>Note: Round Earnings are not credited until <font color="orange">{$GLOBAL.confirmations}</font> confirms.</li></ul>{/if}*}
  </footer>
</article>
