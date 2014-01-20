{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
{include file="statistics/blocks/block_shares_graph.tpl"}

  {include file="statistics/blocks/block_overview_time.tpl"}

{include file="statistics/blocks/blocks_found_details.tpl"}
{/if}
