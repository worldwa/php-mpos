<?php
// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($setting->getValue('recaptcha_enabled')) {
  // Load re-captcha specific data
  require_once(INCLUDE_DIR . '/lib/recaptchalib.php');
  $rsp = recaptcha_check_answer (
    $setting->getValue('recaptcha_private_key'),
    $_SERVER["REMOTE_ADDR"],
    $_POST["recaptcha_challenge_field"],
    $_POST["recaptcha_response_field"]
  );
}

if ($setting->getValue('disable_invitations') && $setting->getValue('lock_registration')) {
  $_SESSION['POPUP'][] = array('CONTENT' => '账号注册暂时关闭，请稍后重试.', 'TYPE' => 'errormsg');
} else if ($setting->getValue('lock_registration') && !$setting->getValue('disable_invitations') && !isset($_POST['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => '仅仅被邀请的用户才允许注册.', 'TYPE' => 'errormsg');
} else {
  // Check if recaptcha is enabled, process form data if valid
  if($setting->getValue('recaptcha_enabled') && $_POST["recaptcha_response_field"] && $_POST["recaptcha_response_field"]!=''){
    if ($rsp->is_valid) {
      $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key')));
      isset($_POST['token']) ? $token = $_POST['token'] : $token = '';
      if ($user->register(@$_POST['username'], @$_POST['password1'], @$_POST['password2'], @$_POST['pin'], @$_POST['email1'], @$_POST['email2'], $token)) {
        ! $setting->getValue('accounts_confirm_email_disabled') ? $_SESSION['POPUP'][] = array('CONTENT' => 'Please check your mailbox to activate this account') : $_SESSION['POPUP'][] = array('CONTENT' => 'Account created, please login');
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => '创建账户失败: ' . $user->getError(), 'TYPE' => 'errormsg');
      }
    } else {
      $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key'), $rsp->error));
      $_SESSION['POPUP'][] = array('CONTENT' => '验证码不正确额, 请重试. (' . $rsp->error . ')', 'TYPE' => 'errormsg');
    }
    // Empty captcha
  } else if ($setting->getValue('recaptcha_enabled')) {
    $smarty->assign("RECAPTCHA", recaptcha_get_html($setting->getValue('recaptcha_public_key'), $rsp->error));
    $_SESSION['POPUP'][] = array('CONTENT' => '验证码不正确额, 请重试.', 'TYPE' => 'errormsg');
    // Captcha disabled
  } else {
    isset($_POST['token']) ? $token = $_POST['token'] : $token = '';
    if ($user->register(@$_POST['username'], @$_POST['password1'], @$_POST['password2'], @$_POST['pin'], @$_POST['email1'], @$_POST['email2'], $token)) {
      ! $setting->getValue('accounts_confirm_email_disabled') ? $_SESSION['POPUP'][] = array('CONTENT' => '登录邮件查看邮件，以激活您的账户') : $_SESSION['POPUP'][] = array('CONTENT' => '账户创建成功，请登录');
    } else {
      $_SESSION['POPUP'][] = array('CONTENT' => '创建账户失败: ' . $user->getError(), 'TYPE' => 'errormsg');
    }
  }
}

// We load the default registration template instead of an action specific one
$smarty->assign("CONTENT", "../default.tpl");
?>
