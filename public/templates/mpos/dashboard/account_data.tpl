<article class="module width_3_quarter" style="margin-top: -200px">
  <header><h3>账户信息</h3></header>
    <table class="tablesorter" cellspacing="0">
      <tr>
        <td colspan="2">
          {if $GLOBAL.userdata.no_fees}
            您当前还没有产生任何手续费。
          {else if $GLOBAL.fees > 0}
            矿池当前收取 <font color="orange">{$GLOBAL.fees|escape}%</font> 的手续费。
          {else}
            矿池当前不收取任何手续费。
          {/if}
          {*{if $GLOBAL.userdata.donate_percent > 0}*}
            {*您已经捐赠<font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>。*}
          {*{else}*}
            {*您没有<a href="{$smarty.server.PHP_SELF}?page=account&action=edit">捐赠</a>。*}
          {*{/if}*}
        </td>
      </tr>
    </table>
    <table class="tablesorter" cellspacing="0">
      <thead>
        <tr><th colspan="2"><b>{$GLOBAL.config.currency} 账户结余</b></th></tr>
      </thead>
        <tr>
          <td align="left" style="font-weight: bold;">最近24小时收益</td>
          <td align="right"><span id="b-amount24hours" class="confirmed" style="width: calc(120px); font-size: 12px;">{$GLOBAL.userdata.amount24hours.amount24hours|default:"0"|number_format:"8"}</span></td>
        </tr>

      <tr>
        <td align="left" style="font-weight: bold;">已确认</td>
        <td align="right"><span id="b-confirmed" class="confirmed" style="width: calc(120px); font-size: 12px;">{$GLOBAL.userdata.balance.confirmed|default:"0"|number_format:"8"}</span></td>
      </tr>
      <tr>
        <td align="left" style="font-weight: bold;">未确认</td>
        <td align="right"><span id="b-unconfirmed" class="unconfirmed" style="width: calc(120px); font-size: 12px;">{$GLOBAL.userdata.balance.unconfirmed|default:"0"|number_format:"8"}</span></td>
      </tr>
    </table>
    {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
    <table class="tablesorter" cellspacing="0">
     <thead>
      <tr>
        <th align="left">矿工</th>
        <th align="right">算力</th>
        <th align="right" style="padding-right: 10px;">难度</th>
      </tr>
      </thead>
      <tbody id="b-workers">
        <td colspan="3" align="center">目前还没有矿工</td>
      </tbody>
      </tr>
    </table>
    {/if}
</article>
