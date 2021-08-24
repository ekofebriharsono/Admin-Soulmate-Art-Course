<?php

function OpenCon()
 {
$mysqli = new mysqli("localhost","kitasoul_root","rcJLSh2rhkMEF9m","kitasoul_company_profile");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
 
 return $mysqli;
 }
 
//  OpenCon();
