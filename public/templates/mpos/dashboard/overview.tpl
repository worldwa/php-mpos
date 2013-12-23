<article class="module module width_3_quarter">
  <header><h3> {if $GLOBAL.config.price.currency}{$GLOBAL.config.currency}/{$GLOBAL.config.price.currency}: <span id="b-price">{$GLOBAL.price}</span>{/if} / 矿工数: <span id="b-dworkers">{$GLOBAL.workers}</span></h3></header>
  <div class="module_content">
    <center>
    <div style="display: inline-block;">
      <div id="poolhashrate" style="width:120px; height:90px;"></div>
      <div id="sharerate" style="width:120px; height:90px;"></div>
    </div>
    <div style="display: inline-block;">
      <div id="hashrate" style="width:220px; height:180px;"></div>
    </div>
    <div style="display: inline-block;">
      <div id="nethashrate" style="width:120px; height:90px;"></div>
      <div id="querytime" style="width:120px; height:90px;"></div>
    </div>
    </center>
    {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
    <div style="margin-left: 16px; display: inline-block; width: 100%;">
      <div id="hashrategraph" style="height: 160px; width: 100%;"></div>
    </div>
    {/if}
  </div>
  <footer>
    <p style="margin-left: 25px">更新间隔: {$GLOBAL.config.statistics_ajax_refresh_interval|default:"10"} 秒. 过去 {$INTERVAL|default:"5"} 分钟平均算力.</p>
  </footer>
</article>
