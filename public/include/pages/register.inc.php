<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($setting->getValue('lock_registration') && $setting->getValue('disable_invitations')) {
  $_SESSION['POPUP'][] = array('CONTENT' => '新账号注册暂时关系，请稍后重试.', 'TYPE' => 'errormsg');
  $smarty->assign("CONTENT", "disabled.tpl");
} else if ($setting->getValue('lock_registration') && !$setting->getValue('disable_invitations') && !isset($_GET['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => '被邀请的人才能注册.', 'TYPE' => 'errormsg');
  $smarty->assign("CONTENT", "disabled.tpl");
} else {
  if ($setting->getValue('recaptcha_enabled')) {
    require_once(INCLUDE_DIR . '/lib/recaptchalib.php');
    $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key')));
  }
  $smarty->assign("CONTENT", "default.tpl");
}
?>
