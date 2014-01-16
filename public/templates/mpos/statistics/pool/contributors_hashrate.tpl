<article class="module width_half" style="min-height: 350px">
  <header><h3>矿工算力排名（<i class="icon-star-empty"></i>表示捐赠者）</h3></header>
  <div>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
        <th align="center">名次</th>
        <th align="right"></th>
        <th align="left" scope="col">用户名</th>
        <th align="center" scope="col">KH/s</th>
{*{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}*}
        <th align="center">{$GLOBAL.config.currency}/天</th>
        {*{if $GLOBAL.config.price.currency}<th align="right" style="padding-right: 25px;">{$GLOBAL.config.price.currency}/天</th>{/if}*}
{*{/if}*}
      </tr>
    </thead>
    <tbody>
{assign var=rank value=1}
{assign var=listed value=0}
{section contrib $CONTRIBHASHES}
      {math assign="estday" equation="round(reward / ( diff * pow(2,32) / ( hashrate * 1000 ) / 3600 / 24), 3)" diff=$DIFFICULTY reward=$REWARD hashrate=$CONTRIBHASHES[contrib].hashrate}
      <tr{if $GLOBAL.userdata.username|default:""|lower == $CONTRIBHASHES[contrib].account|lower}{assign var=listed value=1} style="background-color:#99EB99;"{else} class="{cycle values="odd,even"}"{/if}>
        <td align="center">{$rank++}</td>
        <td align="right">{if $CONTRIBHASHES[contrib].donate_percent > 0}<i class="icon-star-empty"></i>{/if}</td>
        <td>{if $CONTRIBHASHES[contrib].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$CONTRIBHASHES[contrib].account|escape}{/if}</td>
        <td align="center">{$CONTRIBHASHES[contrib].hashrate|number_format}</td>
{*{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}*}
        <td align="center">{$estday|number_format:"3"}</td>
        {*{if $GLOBAL.config.price.currency}<td align="right" style="padding-right: 25px;">{($estday * $GLOBAL.price)|default:"n/a"|number_format:"4"}</td>{/if}*}
{*{/if}*}
      </tr>
{/section}
{if $listed != 1 && $GLOBAL.userdata.username|default:"" && $GLOBAL.userdata.rawhashrate|default:"0" > 0}
      {math assign="myestday" equation="round(reward / ( diff * pow(2,32) / ( hashrate * 1000 ) / 3600 / 24), 3)" diff=$DIFFICULTY reward=$REWARD hashrate=$GLOBAL.userdata.rawhashrate}
      <tr>
        <td align="center">n/a</td>
        <td align="right">{if $GLOBAL.userdata.donate_percent > 0}<i class="icon-star-empty"></i>{/if}</td>
        <td>{$GLOBAL.userdata.username|escape}</td>
        <td align="center">{$GLOBAL.userdata.rawhashrate|number_format}</td>
        <td align="center">{$myestday|number_format:"3"|default:"n/a"}</td>
        {*{if $GLOBAL.config.price.currency}<td align="right" style="padding-right: 25px;">{($myestday * $GLOBAL.price)|default:"n/a"|number_format:"4"}</td>{/if}*}
      </tr>
{/if}
    </tbody>
  </table>
</article>
