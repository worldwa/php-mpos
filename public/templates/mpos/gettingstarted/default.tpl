<article class="module width_full">
  <header><h3>新手指南</h3></header>
  <div class="module_content">
    <li>1. <strong>创建用户.</strong>
      <ul>
        <li><a href="{$smarty.server.PHP_SELF}?page=register">点此注册</a>, 如果您已经是本站用户，请登录</li>
        <li><a href="{$smarty.server.PHP_SELF}?page=account&action=workers">新建矿工</a> </li>
      </ul>
    </li>
    <li>2. <strong>下载一个挖矿软件.</strong>
      <ul>
        <li><em>CGMiner Linux/Windows:</em> <a href="http://ck.kolivas.org/apps/cgminer/" target="_blank">点此下载</a></li>
        <li><em>CGMiner Mac OS X:</em> <a href="http://spaceman.ca/cgminer/" target="_blank">点此下载</a></li>
      </ul>
    </li>
    <li><span  style="color:red">3.</span> <strong style="color:red">各显卡算力及配置.</strong>
      <ul>
        <li>
          <p>请点击此链接查看: <a href="{$smarty.server.PHP_SELF}?page=mininghardware">各显卡算力及配置</a></p>
        </li>
      </ul>
    </li>

    <li>4. <strong>配置您的挖矿软件.( 有任何问题请联系群里技术支持解决 )</strong>
      <ul>
        <li>
          <p>查看上面的配置列表, 根据自己的显卡下载对应配置文件覆盖cgminer.conf.</p>
        </li>
          <p>本矿池的配置参数如下: ( 下载的配置文件中已经初始化好，只要修改用户名.矿工名和密码即可 ).</p>
        </li>
          <table width="50%">
            <tbody>
              <tr><td>STRATUM:</td><td style="color:red"><kbd>stratum+tcp://stratum.iwakuang.com</kbd></td></tr>
              <tr><td>端口:</td><td style="color:red"><kbd>{$SITESTRATUMPORT|default:"3333"}</kbd></td></tr>
              <tr><td>矿工:</td><td style="color:red"><kbd><em>用户名</em>.<em>矿工名</em></kbd></td></tr>
              <tr><td>矿工密码:</td><td style="color:red"><kbd>*******</kbd></td></tr>
            </tbody>
          </table>
        <li>
          <p>如果您用的是命令行的方式，如下:</p>
          <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if} -o stratum+tcp://stratum.iwakuang.com:{$SITESTRATUMPORT|default:"3333"} -u <em>用户名</em>.<em>矿工名</em> -p <em>矿工密码</em></pre>
        </li>
        </ul>
    </li>
    <li>5. <strong>添加莱特币地址，以便我们及时提款给您</strong>
      <ul>
        <li> 下载莱特币钱包客户端，<a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">莱特币钱包下载</a>.
          <p>生成一个莱特币地址然后绑定到您的个人账户上.</p>
        </li>
      </ul>
    </li>
  </div>
</article>
