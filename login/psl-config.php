<?php
/**
 * These are the database login details
 */  
#$url=parse_url(getenv("CLEARDB_DATABASE_URL"));
define("HOST", "localhost");     // The host you want to connect to.
define("USER", "root");    // The database username. 
define("PASSWORD", "gandalf1");    // The database password. 
define("DATABASE", "sqlprql");    // The database name.
 
define("CAN_REGISTER", "any");
define("DEFAULT_ROLE", "member");
 
define("SECURE", FALSE);   