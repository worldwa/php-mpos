<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

// Confirm an account by token
if (!isset($_GET['token']) || empty($_GET['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => '没有token', 'TYPE' => 'errormsg');
} else if (!$aToken = $oToken->getToken($_GET['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => '激活账号失败. 非法的 token', 'TYPE' => 'errormsg');
} else {
  $user->changeLocked($aToken['account_id']);
  $oToken->deleteToken($aToken['token']);
  $_SESSION['POPUP'][] = array('CONTENT' => '激活账号成功. 请登录.');
}
$smarty->assign('CONTENT', 'default.tpl');
?>
