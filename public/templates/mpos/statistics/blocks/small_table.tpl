<article class="module width_half">
  <header><h3>矿池最后发现的块</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
        <th align="center">块</th>
        <th>发现者</th>
        <th align="center">实现</th>
        <th align="right" style="padding-right: 25px;">实际 Share数</th>
      </tr>
    </thead>
    <tbody>
{assign var=rank value=1}
{section block $BLOCKSFOUND}
      <tr class="{cycle values="odd,even"}">
        {if ! $GLOBAL.website.blockexplorer.disabled}
        <td align="center"><a href="{$GLOBAL.website.blockexplorer.url}{$BLOCKSFOUND[block].blockhash}" target="_new">{$BLOCKSFOUND[block].height}</a></td>
        {else}
        <td align="center">{$BLOCKSFOUND[block].height}</td>
        {/if}
        <td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$BLOCKSFOUND[block].finder|default:"unknown"|escape}{/if}</td>
        <td align="center">{$BLOCKSFOUND[block].time|date_format:"%d/%m %H:%M:%S"}</td>
        <td align="right" style="padding-right: 25px;">{$BLOCKSFOUND[block].shares|number_format}</td>
      </tr>
{/section}
    </tbody>
  </table>
{if $GLOBAL.config.payout_system != 'pps'}
<footer>
<ul>
  <li>Note: Round Earnings are not credited until <font color="orange">{$GLOBAL.confirmations}</font> confirms.</font></li>
</ul>
{/if}
</footer>
</article>
