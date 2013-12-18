<?php
// Make sure we are called from index.php
if (!defined('SECURITY')) die('Hacking attempt');

if ($user->isAuthenticated()) {
  switch (@$_REQUEST['do']) {
  case 'delete':
    if ($worker->deleteWorker($_SESSION['USERDATA']['id'], $_GET['id'])) {
      $_SESSION['POPUP'][] = array('CONTENT' => '矿工失败成功');
    } else {
      $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'errormsg');
    }
    break;
  case 'add':
    if ($worker->addWorker($_SESSION['USERDATA']['id'], $_POST['username'], $_POST['password'])) {
      $_SESSION['POPUP'][] = array('CONTENT' => '添加矿工失败');
    } else {
      $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'errormsg');
    }
    break;
  case 'update':
    if ($worker->updateWorkers($_SESSION['USERDATA']['id'], @$_POST['data'])) {
      $_SESSION['POPUP'][] = array('CONTENT' => '矿工更新成');
    } else {
      $_SESSION['POPUP'][] = array('CONTENT' => $worker->getError(), 'TYPE' => 'errormsg');
    }
    break;
  }

  $aWorkers = $worker->getWorkers($_SESSION['USERDATA']['id']);
  if (!$aWorkers) $_SESSION['POPUP'][] = array('CONTENT' => '没有矿工被更新', 'TYPE' => 'errormsg');

  $smarty->assign('WORKERS', $aWorkers);
}

$smarty->assign('CONTENT', 'default.tpl');

?>
