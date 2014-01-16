<?php

// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

// Grab the last blocks found
if (!$smarty->isCached('master.tpl', $smarty_cache_key)) {

  $aBlockBonus = $transaction->getBonus();

  $smarty->assign("BLOCKBONUS", $aBlockBonus);
  $smarty->assign("CONTENT", "default.tpl");
} else {
  $debug->append('Using cached page', 3);
}




?>




