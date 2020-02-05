# Dependencies required to get Visual Studio Code working inside VSL.
# Original post for WSL 1 https://medium.com/@callback.insanity/visual-studio-code-wsl-running-php-intellisense-from-alpine-linux-on-windows-10-78e8a990f1cc

# VSC remote requirements
# https://code.visualstudio.com/docs/remote/linux#_remote-host-container-wsl-linux-prerequisites

 sudo apk add libgcc libstdc++
 
 # Development dependencies
 sudo apk add php7 php7-json php7-pecl-xdebug git php7-tokenizer
 sudo apk add php7-curl php7-mbstring php7-opcache php7-dom php7-gd php7-pdo php7-pdo_mysql php7-session php7-simplexml php7-xml
 
 # Required to install composer
 sudo apk add openssl php7-phar
 
 # Install Composer
 # https://getcomposer.org/doc/00-intro.md
 # https://getcomposer.org/download/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'c5b9b6d368201a9db6f74e2611495f369991b72d9c8cbd3ffbc63edff210eb73d46ffbfce88669ad33695ef77dc76976') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# Install Drupal
# https://www.drupal.org/docs/develop/using-composer/using-composer-to-install-drupal-and-manage-dependencies
composer -vvv create-project drupal/recommended-project drupal


# Github
sudo apk add openssh-client
mkdir ~/.ssh
chmod 700 ~/.ssh
# Assuming you have existing keys
cp /mnt/c/Users/<windows user>/.ssh/{id_rsa,id_rsa.pub} .ssh
# 2020-02-05-10:26PM wsl@Alpine:~$ chmod 644 .ssh/id_rsa.pub
# 2020-02-05-10:27PM wsl@Alpine:~$ chmod 600 .ssh/id_rsa



