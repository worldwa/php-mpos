    <hgroup>
      <h1 class="site_title" style="font-size: 300%">{$GLOBAL.website.name|default:"爱挖矿"}</h1>
      <h2 class="section_title">
        {if $smarty.request.action|escape|default:""}
          {*{$smarty.request.action|escape|capitalize}*}
          {if  $smarty.request.action|escape == 'pool'}算力排名{/if}
          {if  $smarty.request.action|escape == 'edit'}账户管理{/if}
          {if  $smarty.request.action|escape == 'workers'}矿工管理{/if}
          {if  $smarty.request.action|escape == 'transactions'}账单记录{/if}
        {else}
          {*{$smarty.request.page|escape|default:"首页"|capitalize}*}
          {if $smarty.request.page|escape|default:'index' == 'index' }首页{/if}
          {if $smarty.request.page|escape|default:'index' == 'gettingstarted' }新手指南{/if}
          {if $smarty.request.page|escape|default:'index' == 'login' }登录{/if}
          {if $smarty.request.page|escape|default:'index' == 'register' }注册{/if}
          {if $smarty.request.page|escape|default:'index' == 'dashboard' }数据统计{/if}
          {if $smarty.request.page|escape|default:'index' == 'account' }账户{/if}
          {if $smarty.request.page|escape|default:'index' == 'statistics' }统计{/if}
        {/if}
      </h2>
    </hgroup>
    {include file="login/small.tpl"}