    <div class="breadcrumbs_container">
      <article class="breadcrumbs">
        <a href="{$smarty.server.PHP_SELF}">{$GLOBAL.website.name|default:"The Pool"}</a>
        <div class="breadcrumb_divider"></div>
        <a class="{if ! $smarty.request.action|default:""}current{/if}" {if $smarty.request.action|default:""}href="{$smarty.server.PHP_SELF}?page={$smarty.request.page|default:"home"}"{/if}>
          {*{$smarty.request.page|escape|default:"index"|capitalize}*}
          {if $smarty.request.page|escape|default:'index' == 'index' }首页
          {elseif $smarty.request.page|escape|default:'index' == 'gettingstarted' }新手指南
          {elseif $smarty.request.page|escape|default:'index' == 'login' }登录
          {elseif $smarty.request.page|escape|default:'index' == 'register' }注册
          {elseif $smarty.request.page|escape|default:'index' == 'dashboard' }数据统计
          {elseif $smarty.request.page|escape|default:'index' == 'account' }账户
          {elseif $smarty.request.page|escape|default:'index' == 'statistics' }统计
          {elseif $smarty.request.page|escape|default:'index' == 'mininghardware' }各显卡算力及配置
          {else}
            {$smarty.request.page|escape|default:"Home"|capitalize|escape|replace:'"':''}
          {/if}
        </a>
        {if $smarty.request.action|default:""}
          <div class="breadcrumb_divider"></div>
          <a class="current">
            {if  $smarty.request.action|escape == 'pool'}算力排名
            {elseif  $smarty.request.action|escape == 'edit'}账户管理
            {elseif  $smarty.request.action|escape == 'workers'}矿工管理
            {elseif  $smarty.request.action|escape == 'transactions'}账单记录
            {else}
              {$smarty.request.action|escape|capitalize|escape|replace:'"':''}
            {/if}
          </a>
        {/if}
      </article>
    </div>
