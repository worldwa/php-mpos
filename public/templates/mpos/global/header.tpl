    <hgroup>
      <h1 class="site_title" style="font-size: 300%">{$GLOBAL.website.name|default:"爱挖矿"}</h1>
      <h2 class="section_title">
        {if $smarty.request.action|escape|default:""}
          {*{$smarty.request.action|escape|capitalize}*}
          {if  $smarty.request.action|escape == 'pool'}算力排名
          {elseif  $smarty.request.action|escape == 'edit'}账户管理
          {elseif  $smarty.request.action|escape == 'workers'}矿工管理
          {elseif  $smarty.request.action|escape == 'transactions'}账单记录
          {else}
            {$smarty.request.action|escape|default:""}
          {/if}
        {else}
          {*{$smarty.request.page|escape|default:"首页"|capitalize}*}
          {if $smarty.request.page|escape|default:'index' == 'index' }首页
          {elseif $smarty.request.page|escape|default:'index' == 'gettingstarted' }新手指南
          {elseif $smarty.request.page|escape|default:'index' == 'login' }登录
          {elseif $smarty.request.page|escape|default:'index' == 'register' }注册
          {elseif $smarty.request.page|escape|default:'index' == 'dashboard' }数据统计
          {elseif $smarty.request.page|escape|default:'index' == 'account' }账户
          {elseif $smarty.request.page|escape|default:'index' == 'statistics' }统计
          {else}
            {$smarty.request.page|escape|default:"首页"|capitalize}
          {/if}
        {/if}
      </h2>
    </hgroup>
    {include file="login/small.tpl"}