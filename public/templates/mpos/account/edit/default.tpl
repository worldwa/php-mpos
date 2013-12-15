<form action="{$smarty.server.PHP_SELF}" method="post">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="updateAccount">
  <article class="module width_half">
    <header><h3>账户</h3></header>
    <div class="module_content">
      <fieldset>
        <label>用户名</label>
        <input type="text" value="{$GLOBAL.userdata.username|escape}" readonly />
      </fieldset>
      <fieldset>
        <label>用户ID</label>
        <input type="text" value="{$GLOBAL.userdata.id}" readonly />
      </fieldset>
      {if !$GLOBAL.website.api.disabled}
      <fieldset>
        <label>API Key</label>
        <a href="{$smarty.server.PHP_SELF}?page=api&action=getuserstatus&api_key={$GLOBAL.userdata.api_key}&id={$GLOBAL.userdata.id}">{$GLOBAL.userdata.api_key}</a>
      </fieldset>
      {/if}
      <fieldset>
        <label>E-Mail</label>
        <input type="text" name="email" value="{nocache}{$GLOBAL.userdata.email|escape}{/nocache}" size="20" />
      </fieldset>
      <fieldset>
        <label>付款地址</label>
        <input type="text" name="paymentAddress" value="{nocache}{$smarty.request.paymentAddress|default:$GLOBAL.userdata.coin_address|escape}{nocache}" size="40" />
      </fieldset>
      {*<fieldset>*}
        {*<label>Donation Percentage</label>*}
        {*<font size="1"> Donation amount in percent (example: 0.5)</font>*}
        {*<input type="text" name="donatePercent" value="{nocache}{$smarty.request.donatePercent|default:$GLOBAL.userdata.donate_percent|escape}{nocache}" size="4" />*}
      {*</fieldset>*}
      <fieldset>
        <label>自动提款额度</label>
        <font size="1">{$GLOBAL.config.ap_threshold.min}-{$GLOBAL.config.ap_threshold.max} {$GLOBAL.config.currency}.如果为0，则表示不自动提款（例如1）.</font>
        <input type="text" name="payoutThreshold" value="{$smarty.request.payoutThreshold|default:$GLOBAL.userdata.ap_threshold|escape}" size="5" maxlength="5" />
      </fieldset>
      {*<fieldset>*}
        {*<label>Anonymous Account</label>*}
        {*Hide username on website from others. Admins can still get your user information.*}
        {*<label class="checkbox" for="is_anonymous">*}
        {*<input class="ios-switch" type="hidden" name="is_anonymous" value="0" />*}
        {*<input class="ios-switch" type="checkbox" name="is_anonymous" value="1" id="is_anonymous" {if $GLOBAL.userdata.is_anonymous}checked{/if} />*}
        {*<div class="switch"></div>*}
        {*</label>*}
      {*</fieldset>*}
      <fieldset>
        <label>4 位数 PIN</label>
        <font size="1">你注册时填写的4位数PIN</font>
        <input type="password" name="authPin" size="4" maxlength="4">
      </fieldset>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="Update Account" class="alt_btn">
      </div>
    </footer>
  </article>
</form>

{if !$GLOBAL.disable_mp}
<form action="{$smarty.server.PHP_SELF}" method="post">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="cashOut">
  <article class="module width_half">
    <header>
      <h3>Cash Out</h3>
    </header>
    <div class="module_content">
      <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
        Please note: a {$GLOBAL.config.txfee} {$GLOBAL.config.currency} transaction will apply when processing "On-Demand" manual payments
      </p>
      <fieldset>
        <label>Account Balance</label>
        <input type="text" value="{nocache}{$GLOBAL.userdata.balance.confirmed|escape}{/nocache}" {$GLOBAL.config.currency} readonly/>
      </fieldset>
      <fieldset>
        <label>Payout to</label>
        <input type="text" value="{nocache}{$GLOBAL.userdata.coin_address|escape}{/nocache}" readonly/>
      </fieldset>
      <fieldset>
        <label>4 digit PIN</label>
        <input type="password" name="authPin" size="4" maxlength="4" />
      </fieldset>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="Cash Out" class="alt_btn">
      </div>
    </footer>
  </article>
</form>
{/if}

<form action="{$smarty.server.PHP_SELF}" method="post"><input type="hidden" name="act" value="updatePassword">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="updatePassword">
  <article class="module width_half">
    <header>
      <h3>Change Password</h3>
    </header>
    <div class="module_content">
      <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
      Note: You will be redirected to login on successful completion of a password change
      </p>
      <fieldset>
        <label>Current Password</label>
        <input type="password" name="currentPassword" />
      </fieldset>
      <fieldset>
        <label>New Password</label>
        <input type="password" name="newPassword" />
      </fieldset>
      <fieldset>
        <label>New Password Repeat</label>
        <input type="password" name="newPassword2" />
      </fieldset>
      <fieldset>
        <label>4 digit PIN</label>
        <input type="password" name="authPin" size="4" maxlength="4" />
      </fieldset>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="Change Password" class="alt_btn">
      </div>
    </footer>
  </article>
</form>
