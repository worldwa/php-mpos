<article class="module width_quarter"  {if  $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 0}style="display: none"{/if}>
  <header><h3>周期信息</h3></header>
  <div class="module_content">
    <div id="shareinfograph" style="width: 100%; height: 150px;"></div>
  </div>
  <footer>
  </footer>
</article>
