    <hgroup>
      <h1 class="site_title" style="font-size: 300%">{$GLOBAL.website.name|default:"爱挖矿"}</h1>
      <h2 class="section_title">{if $smarty.request.action|escape|default:""}{$smarty.request.action|escape|capitalize}{else}{$smarty.request.page|escape|default:"首页"|capitalize}{/if}</h2>
    </hgroup>
    {include file="login/small.tpl"}
