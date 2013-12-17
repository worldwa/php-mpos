  {include file="../global/header.tpl"}
  <h1>发生了一个错误!</h1>
  <p>查看下面详细信息.</p>
  <table cellpadding="0" cellspacing="0" border="0" id="backgroundTable">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="1" border="0" align="left" width="800px">
{nocache}
{foreach from=$DATA key=text item=message}
  {if $text != 'email' && $text != 'subject'}
      <tr>
        <th align="left" width="150px">{$text}</th>
        <td>{$message}</td>
      </tr>
  {/if}
{/foreach}
{/nocache}
    </table>
    </td>
  </tr>
  </table>
  {include file="../global/footer.tpl"}
