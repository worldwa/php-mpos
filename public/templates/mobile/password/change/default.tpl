{include file="global/block_header.tpl" BLOCK_HEADER="Change Password"}
    <form action="{$smarty.server.PHP_SELF}" method="post">
      <input type="hidden" name="token" value="{$smarty.request.token|escape}">
      <input type="hidden" name="page" value="{$smarty.request.page|escape}">
      <input type="hidden" name="action" value="{$smarty.request.action|escape}">
      <input type="hidden" name="do" value="useToken">
      <table>
        <tr><td>新密码: </td><td><input type="password" name="newPassword"></td></tr>
        <tr><td>再次输入新密码: </td><td><input type="password" name="newPassword2"></td></tr>
      </tbody></table>
      <input type="submit" class="submit long" value="Change Password"></form>
{include file="global/block_footer.tpl"}
