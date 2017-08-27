# Cloud9 Configure Bash Script

A simple script I created to automatically install dependencies for a cloud 9 container that's going to be used to run a Laravel application.

## What does it do?
* Adds repository "ppa:ondrej/php"
* Updates apt
* Installs "livapache2-mod-php7.0"
* Disables PHP5, Enables PHP7.0
* Restarts Apache
* Installs the following PHP7.0 Packages: DOM, ZIP, MBSTRING, MCRYPT, MYSQL, SQLITE, GD
* Runs cloud9 phpmyadmin and mysql installation scripts.