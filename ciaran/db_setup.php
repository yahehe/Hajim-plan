<?php
// File: dbsetup.php
// Purpose: load PEAR DB library and initialize
// Modified: 2014-02-20
$dbtype = 'mysql';
$dbuser = 'root';
$dbpass = PASSWORD_HERE;
$dbname = 'sqlprql';
$dbhost = 'localhost';
$dsn = "$dbtype:host=$dbhost;dbname=$dbname";
if ($curhost == 'betaweb.csug.rochester.edu')
{
    // Leave $dbhost off on betaweb
    $dsn = "$dbtype:dbname=$dbname";
}
try {
    $db = new PDO($dsn, $dbuser, $dbpass);
}
catch (PDOException $e) {
    echo "Connection Error! (" . $e->getMessage() . ")</p>";
    die();
}
?>