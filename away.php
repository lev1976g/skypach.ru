<?php

//$page = urlencode($_GET['url']);
  
$page = substr($_SERVER["QUERY_STRING"], 4);

header("Location: {$page}");

?>
