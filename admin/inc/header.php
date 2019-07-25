<?php
  define('POST_PER_PAGE', 10);
  session_start();
  if( !isset($_SESSION['login'])){
    header('Location: login.php');
    exit();
  }
	include $_SERVER["DOCUMENT_ROOT"].'/db/dbconfig.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRID || <?php echo $PAGE; ?></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>

