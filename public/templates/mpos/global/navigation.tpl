    <hr/>
    <li class="icon-home"><a href="{$smarty.server.PHP_SELF}">首页</a></li>
    <li class="icon-desktop"><a href="{$smarty.server.PHP_SELF}?page=gettingstarted">新手指南</a></li>
    <li class="icon-align-left"><a href="{$smarty.server.PHP_SELF}?page=mininghardware">各显卡算力及配置</a></li>
    <li class="icon-doc"><a href="http://www.iwakuang.com/bbs" target="_blank">爱挖矿论坛</a></li>
    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
    <h3>我的账户</h3>
    <ul class="toggle">
      <li class="icon-gauge"><a href="{$smarty.server.PHP_SELF}?page=dashboard">数据统计</a></li>
      <li class="icon-user"><a href="{$smarty.server.PHP_SELF}?page=account&action=edit">账户管理</a></li>
      <li class="icon-photo"><a href="{$smarty.server.PHP_SELF}?page=account&action=workers">矿工管理</a></li>
      <li class="icon-indent-left"><a href="{$smarty.server.PHP_SELF}?page=account&action=transactions">账单记录</a></li>
      <li class="icon-align-left"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=pool">算力排名</a></li>
    {if !$GLOBAL.config.disable_notifications}<li class="icon-megaphone"><a href="{$smarty.server.PHP_SELF}?page=account&action=notifications">邮件通知</a></li>{/if}
    {if !$GLOBAL.config.disable_invitations &&  $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}<li class="icon-plus"><a href="{$smarty.server.PHP_SELF}?page=account&action=invitations">邀请</a></li>{/if}
      {*<li class="icon-barcode"><a href="{$smarty.server.PHP_SELF}?page=account&action=qrcode">二维码</a></li>*}
    </ul>
    </li>
    {/if}
    {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
    <h3>管理</h3>
    <ul class="toggle">
      <li class="icon-bell"><a href="{$smarty.server.PHP_SELF}?page=admin&action=monitoring">监控</a></li>
      <li class="icon-torso"><a href="{$smarty.server.PHP_SELF}?page=admin&action=user">用户信息</a></li>
      <li class="icon-money"><a href="{$smarty.server.PHP_SELF}?page=admin&action=wallet">钱包信息</a></li>
      <li class="icon-exchange"><a href="{$smarty.server.PHP_SELF}?page=admin&action=transactions">账单信息</a></li>
      <li class="icon-cog"><a href="{$smarty.server.PHP_SELF}?page=admin&action=settings">设置</a></li>
      <li class="icon-doc"><a href="{$smarty.server.PHP_SELF}?page=admin&action=news">新闻</a></li>
      <li class="icon-chart"><a href="{$smarty.server.PHP_SELF}?page=admin&action=reports">报表</a></li>
      <li class="icon-photo"><a href="{$smarty.server.PHP_SELF}?page=admin&action=poolworkers">矿工信息</a></li>
      <li class="icon-pencil"><a href="{$smarty.server.PHP_SELF}?page=admin&action=templates">模板</a></li>
    </ul>
    {/if}
    {if $smarty.session.AUTHENTICATED|default: "0" == 1 && $GLOBAL.userdata.is_admin == 1}
      <h3>统计</h3>
      <ul class="toggle">
        <li class="icon-align-left"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=pool">矿池</a></li>
        <li class="icon-th-large"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=blocks">块</a></li>
        <li class="icon-chart"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=graphs">趋势图</a></li>
        <li class="icon-record"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round">周期</a></li>
        <li class="icon-search"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=blockfinder">发现者</a></li>
        {if $GLOBAL.config.monitoring_uptimerobot_api_keys|default:"0"}<li class="icon-bell"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=uptime">运行时间</a></li>{/if}
      </ul>
    {else}
      <h3>统计</h3>
      <ul class="toggle">
       {*{if $GLOBAL.acl.pool.statistics}*}
       {*<li class="icon-align-left"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=pool">矿池</a></li>*}
       {*{else}*}
       <li class="icon-align-left"><a href="{$smarty.server.PHP_SELF}?page=statistics">矿池概况</a>
       {*{/if}*}
       {if $GLOBAL.acl.block.statistics}
         {if $smarty.session.AUTHENTICATED|default: "0" == 1 && $GLOBAL.userdata.is_admin == 1}
            <li class="icon-th-large"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=blocks">爆块统计</a></li>
         {/if}
       {/if}
       {*{if $GLOBAL.acl.round.statistics}*}
       {*<li class="icon-chart"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round">周期</a></li>*}
       {*{/if}*}
       {*{if $GLOBAL.acl.blockfinder.statistics}*}
       {*<li class="icon-search"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=blockfinder">发现者</a></li>*}
       {*{/if}*}
       {*{if $GLOBAL.acl.uptime.statistics}*}
       {*{if $GLOBAL.config.monitoring_uptimerobot_api_keys|default:"0"}<li class="icon-bell"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=uptime">Uptime</a></li>{/if}*}
       {*{/if}*}
      </ul>
    {/if}
    {*<h3>帮助</h3>*}
    {*<ul class="toggle">*}
      {*{if !$GLOBAL.website.about.disabled}*}
      {*<li class="icon-doc"><a href="{$smarty.server.PHP_SELF}?page=about&action=pool">关于我们</a></li>*}
      {*{/if}*}
      {*{if !$GLOBAL.website.donors.disabled}*}
      {*<li class="icon-money"><a href="{$smarty.server.PHP_SELF}?page=about&action=donors">捐赠</a></li>*}
      {*{/if}*}
    {*</ul>*}
    <h3>其他</h3>
    <ul class="toggle">
      {if $smarty.session.AUTHENTICATED|default:"0" == 1}
      {*{if !$GLOBAL.config.disable_contactform|default:"0" == 1}*}
      {*<li class="icon-mail"><a href="{$smarty.server.PHP_SELF}?page=contactform">Support</a></li>*}
      {*{/if}*}
      <li class="icon-off"><a href="{$smarty.server.PHP_SELF}?page=logout">退出</a></li>
      {else}
      <li class="icon-login"><a href="{$smarty.server.PHP_SELF}?page=login">登录</a></li>
      <li class="icon-pencil"><a href="{$smarty.server.PHP_SELF}?page=register">注册</a></li>
      {*<li class="icon-mail"><a href="{$smarty.server.PHP_SELF}?page=support">Support</a></li>*}
      {/if}
    </ul>
    <ul>
      <hr/>
    </ul>
    {*{if $smarty.session.AUTHENTICATED|default:"0" == 1}*}
     {*<br />*}
    {*{else}*}
    {*<ul>*}
     {*<center>*}
      {*<div style="display: inline-block;">*}
      {*<i><u><b><font size="2">LIVE STATS</font></b></u></i>*}
      {*<div id="mr" style="width:180px; height:120px;"></div>*}
      {*<div id="hr" style="width:180px; height:120px;"></div>*}
      {*</div>*}
     {*</center>*}
    {*</ul>*}
      {*<hr/>*}
    {*{include file="global/navjs.tpl"}*}
    {*{/if}*}
