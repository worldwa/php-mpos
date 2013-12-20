<?php

// Make sure we are called from index.php
if (!defined('SECURITY'))
  die('Hacking attempt');

if ($user->isAuthenticated()) {
  if ( @$_POST['do'] && (! $user->checkPin($_SESSION['USERDATA']['id'], @$_POST['authPin']))) {
    $_SESSION['POPUP'][] = array('CONTENT' => '不合法的PIN. ' . ($config['maxfailed']['pin'] - $user->getUserPinFailed($_SESSION['USERDATA']['id'])) . ' attempts remaining.', 'TYPE' => 'errormsg');
  } else {
    switch (@$_POST['do']) {
    case 'cashOut':
      if ($setting->getValue('disable_payouts') == 1) {
        $_SESSION['POPUP'][] = array('CONTENT' => '手工提前暂时关闭.', 'TYPE' => 'info');
      } else {
        $aBalance = $transaction->getBalance($_SESSION['USERDATA']['id']);
        $dBalance = $aBalance['confirmed'];
        if ($dBalance > $config['txfee']) {
          if (!$oPayout->isPayoutActive($_SESSION['USERDATA']['id'])) {
            if ($iPayoutId = $oPayout->createPayout($_SESSION['USERDATA']['id'])) {
              $_SESSION['POPUP'][] = array('CONTENT' => '创建人工提款请求成功 #' . $iPayoutId);
            } else {
              $_SESSION['POPUP'][] = array('CONTENT' => '创建人工提款请求失败', 'TYPE' => 'errormsg');
            }
          } else {
            $_SESSION['POPUP'][] = array('CONTENT' => '你已经提交了一个提款请求.', 'TYPE' => 'errormsg');
          }
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => '余额不足, 最少需要 ' . $config['txfee'] . ' ' . $config['currency'] . '才能提款', 'TYPE' => 'errormsg');
        }
      }
      break;

    case 'updateAccount':
      if ($user->updateAccount($_SESSION['USERDATA']['id'], $_POST['paymentAddress'], $_POST['payoutThreshold'], $_POST['donatePercent'], $_POST['email'], $_POST['is_anonymous'])) {
        $_SESSION['POPUP'][] = array('CONTENT' => '账户更新成功', 'TYPE' => 'success');
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => '更新账户失败: ' . $user->getError(), 'TYPE' => 'errormsg');
      }
      break;

    case 'updatePassword':
      if ($user->updatePassword($_SESSION['USERDATA']['id'], $_POST['currentPassword'], $_POST['newPassword'], $_POST['newPassword2'])) {
        $_SESSION['POPUP'][] = array('CONTENT' => '密码更新成功', 'TYPE' => 'success');
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $user->getError(), 'TYPE' => 'errormsg');
      }
      break;
    }
  }
}

// Tempalte specifics
$smarty->assign("CONTENT", "default.tpl");
?>
