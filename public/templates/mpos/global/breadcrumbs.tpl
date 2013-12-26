    <div class="breadcrumbs_container">
      <article class="breadcrumbs">
        <a href="{$smarty.server.PHP_SELF}">{$GLOBAL.website.name|default:"The Pool"}</a>
        <div class="breadcrumb_divider"></div>
        <a class="{if ! $smarty.request.action|default:""}current{/if}" {if $smarty.request.action|default:""}href="{$smarty.server.PHP_SELF}?page={$smarty.request.page|default:"home"}"{/if}>
          {*{$smarty.request.page|escape|default:"index"|capitalize}*}
          {if $smarty.request.page|escape|default:'index' == 'index' }首页{/if}
          {if $smarty.request.page|escape|default:'index' == 'gettingstarted' }新手指南{/if}
          {if $smarty.request.page|escape|default:'index' == 'login' }登录{/if}
          {if $smarty.request.page|escape|default:'index' == 'register' }注册{/if}
          {if $smarty.request.page|escape|default:'index' == 'dashboard' }数据统计{/if}
          {if $smarty.request.page|escape|default:'index' == 'account' }账户{/if}
          {if $smarty.request.page|escape|default:'index' == 'statistics' }统计{/if}
        </a>
        {if $smarty.request.action|default:""}
          <div class="breadcrumb_divider"></div>
          <a class="current">
            {if  $smarty.request.action|escape == 'pool'}算力排名{/if}
            {if  $smarty.request.action|escape == 'edit'}账户管理{/if}
            {if  $smarty.request.action|escape == 'workers'}矿工管理{/if}
            {if  $smarty.request.action|escape == 'transactions'}账单记录{/if}
          </a>
        {/if}
      </article>
    </div>
