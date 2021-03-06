<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

// Check user to ensure they are admin
if (!$user->isAuthenticated() || !$user->isAdmin($_SESSION['USERDATA']['id'])) {
  header("HTTP/1.1 404 Page not found");
  die("404 Page not found");
}

if (!$smarty->isCached('master.tpl', $smarty_cache_key)) {
  $debug->append('No cached version available, fetching from backend', 3);
  if ($user->isAuthenticated()) {
    $aHourlyHashRates = $statistics->getHourlyHashrateByAccount($_SESSION['USERDATA']['id']);
    $aPoolHourlyHashRates = $statistics->getHourlyHashrateByPool();
  }
  $smarty->assign("YOURHASHRATES", @$aHourlyHashRates);
  $smarty->assign("POOLHASHRATES", @$aPoolHourlyHashRates);
} else {
  $debug->append('Using cached page', 3);
}

$smarty->assign("CONTENT", "default.tpl");
?>
