    <div class="user">
{if $GLOBAL.userdata.username|default}
            <p>欢迎 {$smarty.session.USERDATA.username|escape}</p>
{else}
            <p>欢迎您，加入我们莱特币矿工大队。</p>
{/if}
    </div>
