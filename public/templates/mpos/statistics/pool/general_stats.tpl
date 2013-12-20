 <article class="module width_half">
  <header><h3>概况</h3></header>
  <div class="module_content">
    <table width="100%">
      <tbody>
        <tr>
          <th align="left" width="50%">矿池速度</th>
          <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
        </tr>
        <tr>
          <th align="left">矿池效率</td>
          <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
        </tr>
        <tr>
          <th align="left">当前矿工</td>
          <td id="b-workers">{$GLOBAL.workers}</td>
        </tr>
        <tr>
          <th align="left">当前难度</td>
      {if ! $GLOBAL.website.chaininfo.disabled}
          <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><font size="2"><span id="b-diff">{$NETWORK.difficulty}</span></font></a></td>
      {else}
          <td><font size="2"><span id="b-diff">{$NETWORK.difficulty}</span></font></td>
      {/if}
        </tr>
        <tr>
          <th align="left">预估挖到一个快需要多久</td>
          <td>{$ESTTIME|seconds_to_words}</td>
        </tr>
        <tr>
          <th align="left">预估当前挖到一块需要shares数</td>
          <td id="b-target">{$ESTIMATES.shares} (done: {$ESTIMATES.percent}%)</td>
        </tr>
    {if ! $GLOBAL.website.blockexplorer.disabled}
        <tr>
          <th align="left" width="50%">下一个块</td>
          <td colspan="3">{$CURRENTBLOCK + 1} &nbsp;&nbsp;<font size="1"> (Current: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK})</a></font></td>
        </tr>
    {else}
        <tr>
          <th align="left">下一个块</td>
          <td colspan="3">{$CURRENTBLOCK + 1} &nbsp;&nbsp; (Current: {$CURRENTBLOCK})</td>
        </tr>
    {/if}
        <tr>
          <th align="left">矿池上次发现的块</td>
          <td colspan="3"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"}</a></td>
        </tr>
        <tr>
          <th align="left">矿池上次发现块距现在</td>
          <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
        </tr>
      </tbody>
    </table>
  </div>
  </div>
  <footer>
{if !$GLOBAL.website.api.disabled}<ul><li>These stats are also available in JSON format <a href="{$smarty.server.PHP_SELF}?page=api&action=getpoolstatus&api_key={$GLOBAL.userdata.api_key|default:""}">HERE</a></li></ul>{/if}
  </footer>
</article>
