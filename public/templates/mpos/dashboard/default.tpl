{if $smarty.session.AUTHENTICATED|default}
  {include file="dashboard/overview.tpl"}
  {if !$GLOBAL.config.disable_invitations &&  $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}{include file="dashboard/system_stats.tpl"}{/if}
  {if !$GLOBAL.config.disable_invitations &&  $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}{include file="dashboard/round_data.tpl"}{/if}
  {include file="dashboard/account_data.tpl"}
  {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  {include file="dashboard/js_api.tpl"}
  {else}
  {include file="dashboard/js_static.tpl"}
  {/if}
{/if}
