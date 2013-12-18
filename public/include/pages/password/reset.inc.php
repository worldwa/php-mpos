<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

// Process password reset request
if ($user->initResetPassword($_POST['username'], $smarty)) {
  $_SESSION['POPUP'][] = array('CONTENT' => 'P检查你的邮件，以完成密码成功');
} else {
  $_SESSION['POPUP'][] = array('CONTENT' => htmlentities($user->getError(), ENT_QUOTES), 'TYPE' => 'errormsg');
}

// Tempalte specifics, user default template by parent page
$smarty->assign("CONTENT", "../default.tpl");
?>
