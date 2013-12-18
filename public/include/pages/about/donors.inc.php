<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($setting->getValue('disable_donors')) {
  $_SESSION['POPUP'][] = array('CONTENT' => '捐赠暂时关闭，请稍后重试.', 'TYPE' => 'errormsg');
  $smarty->assign("CONTENT", "disabled.tpl");
} else {
  $aDonors = $transaction->getDonations();

  // Tempalte specifics
  $smarty->assign("DONORS", $aDonors);
  $smarty->assign("CONTENT", "default.tpl");
}

?>
