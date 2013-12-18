<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($setting->getValue('disable_contactform')) {
  $_SESSION['POPUP'][] = array('CONTENT' => 'Contactform 当前已经关闭.请稍后重试.', 'TYPE' => 'errormsg');
  $smarty->assign("CONTENT", "disabled.tpl");
} else {
  if ($setting->getValue('recaptcha_enabled')) {
    require_once(INCLUDE_DIR . '/lib/recaptchalib.php');
    $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key')));
  }

  // Tempalte specifics
  $smarty->assign("CONTENT", "default.tpl");
}
?>
