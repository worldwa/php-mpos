<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($user->isAuthenticated()) {
  if (!$setting->getValue('disable_invitations')) {
    if ($invitation->getCountInvitations($_SESSION['USERDATA']['id']) >= $config['accounts']['invitations']['count']) {
      $_SESSION['POPUP'][] = array('CONTENT' => '你已经超过了邀请次数：' . $config['accounts']['invitations']['count'], 'TYPE' => 'errormsg');
    } else if (isset($_POST['do']) && $_POST['do'] == 'sendInvitation') {
      if ($invitation->sendInvitation($_SESSION['USERDATA']['id'], $_POST['data'])) {
        $_SESSION['POPUP'][] = array('CONTENT' => '发送邀请成功');
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => '发送邀请失败: ' . $invitation->getError(), 'TYPE' => 'errormsg');
      }
    }
    $aInvitations = $invitation->getInvitations($_SESSION['USERDATA']['id']);
    $smarty->assign('INVITATIONS', $aInvitations);
  } else {
    $aInvitations = array();
    $_SESSION['POPUP'][] = array('CONTENT' => '邀请功能暂时关闭', 'TYPE' => 'errormsg');
  }
}
$smarty->assign('CONTENT', 'default.tpl');
?>
