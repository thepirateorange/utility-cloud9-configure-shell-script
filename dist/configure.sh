#!/bin/bash
# This script is used to automate installation and configuration of servers for Laravel.

# Clear
clear

# Introduction
echo "
===========================================================================
| Hello There! I will be configuring this container for use with Laravel. |
| I was written to run on a freshly created container.                    |
| If this isn't a fresh container I may not work properly.                |
| You have been warned. I will begin in 5 seconds.                        |
===========================================================================
"

# Sleep, Let the user read the message.
sleep 5

# Clear
clear

# Add Repository
echo "[NOTICE] Adding repository"
sudo add-apt-repository ppa:ondrej/php -y

# Clear
clear

# Update Apt
echo "[NOTICE] Updating apt"
sudo apt-get update -y

# Clear
clear

# Install PHP 7
echo "[NOTICE] Installing PHP 7.1"
sudo apt-get install libapache2-mod-php7.1 -y

# Clear
clear

# Disable PHP 5 and enable PHP 7
echo "[NOTICE] Disabling PHP 5 and Enabling PHP 7"
sudo a2dismod php5 && sudo a2enmod php7.1

# Clear
clear

# Restart Apache
echo "[NOTICE] Restarting Apache Server"
sudo service apache2 restart

# Clear
clear

# Install PHP 7 Packages
echo "[NOTICE] Installing PHP 7 Packages"
sudo apt-get install php7.1-dom php7.1-zip php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-sqlite php7.1-gd -y

# Clear
clear

# Install phpmyadmin
echo "[NOTICE] Installing phpmyadmin"
phpmyadmin-ctl install

# Clear
clear

# Ending Message
echo "I've finished running the commands, Thank you."
echo "But you still need to edit the apache configuration file."
read -p "Do you want to edit it now? [Y/N] " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo nano /etc/apache2/sites-enabled/001-cloud9.conf
fi

# Restart Apache
echo "[NOTICE] Restarting Apache Server"
sudo service apache2 restart

# Clear
clear

# End Script
echo "End of script."

# Sleep, Let the user read the message.
sleep 5

# Clear
clear