    <div class="user">
{if $GLOBAL.userdata.username|default}
            <p>欢迎 {$smarty.session.USERDATA.username|escape}</p>
{else}
            <p>欢迎您!</p>
{/if}
    </div>
