<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');
if ($user->isAuthenticated()) {
  if ($setting->getValue('disable_notifications') == 1) {
    $_SESSION['POPUP'][] = array('CONTENT' => '通知功能已经被管理员关闭.', 'TYPE' => 'info');
    $smarty->assign('CONTENT', 'empty');
  } else {
    if (@$_REQUEST['do'] == 'save') {
      if ($notification->updateSettings($_SESSION['USERDATA']['id'], $_REQUEST['data'])) {
        $_SESSION['POPUP'][] = array('CONTENT' => '更新通知设置成功');
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $notification->getError(), 'TYPE' => 'errormsg');
      }
    }

    // Fetch notifications
    $aNotifications = $notification->getNofifications($_SESSION['USERDATA']['id']);
    if (!$aNotifications) $_SESSION['POPUP'][] = array('CONTENT' => '当前没有通知', 'TYPE' => 'errormsg');

    // Fetch user notification settings
    $aSettings = $notification->getNotificationSettings($_SESSION['USERDATA']['id']);

    $smarty->assign('NOTIFICATIONS', $aNotifications);
    $smarty->assign('SETTINGS', $aSettings);
    $smarty->assign('CONTENT', 'default.tpl');
  }
}
?>
