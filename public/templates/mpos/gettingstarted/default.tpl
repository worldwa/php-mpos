<article class="module width_full">
  <header><h3>新手指南</h3></header>
  <div class="module_content">
    <li>1. <strong>创建用户.</strong>
      <ul>
        <li><a href="{$smarty.server.PHP_SELF}?page=register">点此注册</a>, 如果你已经是本站用户，请登录</li>
        <li><a href="{$smarty.server.PHP_SELF}?page=account&action=workers">新建矿工</a> </li>
      </ul>
    </li>
    <li>2. <strong>下载一个挖矿软件.</strong>
      <ul>
        <li><em>CGMiner Linux/Windows:</em> <a href="http://ck.kolivas.org/apps/cgminer/" target="_blank">点此下载</a></li>
        <li><em>CGMiner Mac OS X:</em> <a href="http://spaceman.ca/cgminer/" target="_blank">点此下载</a></li>
      </ul>
    </li>
    <li>3. <strong>配置你的挖矿软件.</strong>
      <p>Settings for Stratum (recommended):</p>
      <table width="50%">
        <tbody>
          <tr><td>STRATUM:</td><td><kbd>stratum+tcp://{$smarty.server.SERVER_NAME}</kbd></td></tr>
          <tr><td>端口:</td><td><kbd>{$SITESTRATUMPORT|default:"3333"}</kbd></td></tr>
          <tr><td>矿工:</td><td><kbd><em>用户名</em>.<em>矿工名</em></kbd></td></tr>
          <tr><td>矿工密码:</td><td><kbd>*******</kbd></td></tr>
        </tbody>
      </table>
      <p>如果你用的是命令行的方式，如下:</p>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if} -o stratum+tcp://{$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>用户名</em>.<em>矿工名</em> -p <em>矿工密码</em></pre>
    </li>
    <li>4. <strong>添加莱特币地址，以便我们及时付款给你</strong>
      <ul>
        <li> 下载莱特币钱包客户端，<a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">莱特币钱包下载</a>.
          <p>生成一个莱特币地址然后绑定到你的个人账户上.</p>
        </li>
      </ul>
    </li>
  </div>
</article>
