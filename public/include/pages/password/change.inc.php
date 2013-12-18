<?php

// Make sure we are called from index.php
if (!defined('SECURITY'))
  die('Hacking attempt');

if (isset($_POST['do']) && $_POST['do'] == 'resetPassword') {
  if ($user->resetPassword($_POST['token'], $_POST['newPassword'], $_POST['newPassword2'])) {
     $_SESSION['POPUP'][] = array('CONTENT' => '密码重置失败，请重新登录.');
  } else {
    $_SESSION['POPUP'][] = array('CONTENT' => $user->getError(), 'TYPE' => 'errormsg');
  }
}
// Tempalte specifics
$smarty->assign("CONTENT", "default.tpl");

?>
