<div data-role="collapsible">
  <h3>算力排名</h3>
{include file="statistics/pool/contributors_hashrate.tpl"}
</div>
{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
  <div data-role="collapsible">
    <h3>User Shares</h3>
  {include file="statistics/pool/contributors_shares.tpl"}
  </div>
{/if}

<div data-role="collapsible">
  <h3>总体统计</h3>
{include file="statistics/pool/general_stats.tpl"}
</div>
{*{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}*}
  <div data-role="collapsible">
  <h3>最近爆块</h3>
  {include file="statistics/blocks/small_table.tpl" ALIGN="right" SHORT=true}
  </div>
{*{/if}*}
